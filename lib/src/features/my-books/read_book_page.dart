import 'dart:io';

import 'package:dio/dio.dart';
import 'package:epub_view/epub_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:popover/popover.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ReadBookPage extends StatefulWidget {
  final dynamic bookData;
  const ReadBookPage({super.key, required this.bookData});

  Book get book {
    if (bookData is Book) {
      return bookData as Book;
    } else if (bookData is Map<String, dynamic>) {
      return Book.fromJson(bookData as Map<String, dynamic>);
    } else {
      throw Exception('Invalid book data type: ${bookData.runtimeType}');
    }
  }

  @override
  State<ReadBookPage> createState() => _ReadBookPageState();
}

class _ReadBookPageState extends State<ReadBookPage> {
  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _showControls = true;
  int _currentPage = 0;
  bool _isDownloading = false;
  double _downloadProgress = 0.0;
  String? _downloadedFilePath;
  bool _showReader = false;
  EpubController? _epubController;
  double _fontSize = 18.0;
  final double _lineHeight = 1.3;
  Color _readerBackgroundColor = const Color(0xFFFFE9CF);
  TextStyle Function({TextStyle? textStyle}) _selectedFont = GoogleFonts.openSans;
  String _selectedFontName = 'Open Sans';

  final Map<String, TextStyle Function({TextStyle? textStyle})> _availableFonts = {
    'Open Sans': GoogleFonts.openSans,
    'Roboto': GoogleFonts.roboto,
    'Lato': GoogleFonts.lato,
    'Merriweather': GoogleFonts.merriweather,
  };

  @override
  void initState() {
    print('Book read URL: ${widget.book.readUrl}');
    super.initState();
    _pageController.addListener(_onPageChange);

    _downloadBook();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChange);
    _pageController.dispose();
    _epubController?.dispose();
    super.dispose();
  }

  void _onPageChange() {
    final page = _pageController.page?.round() ?? 0;
    if (page != _currentPage) {
      setState(() {
        _currentPage = page;
      });
    }
  }

  void _toggleControls() {
    setState(() {
      _showControls = !_showControls;
    });
  }

  Future<bool> _requestStoragePermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.storage.request();
      return status.isGranted;
    }
    return true;
  }

  Future<void> _downloadBook() async {
    if (widget.book.readUrl == null) {
      _showErrorDialog('Download URL not available');
      return;
    }

    if (!await _requestStoragePermission()) {
      _showErrorDialog('Storage permission is required to download books');
      return;
    }

    setState(() {
      _isDownloading = true;
      _downloadProgress = 0.0;
    });

    try {
      final dio = Dio();
      final dir = await getApplicationDocumentsDirectory();
      final fileName = '${widget.book.title?.replaceAll(' ', '_') ?? 'book'}.epub';
      final filePath = '${dir.path}/$fileName';

      print('Downloading to: $filePath');
      print('Download URL: ${widget.book.readUrl}');

      await dio.download(
        widget.book.readUrl!,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              _downloadProgress = received / total;
            });
          }
        },
      );

      final file = File(filePath);
      if (!await file.exists()) {
        throw Exception('File was not created');
      }

      final fileSize = await file.length();
      if (fileSize == 0) {
        throw Exception('Downloaded file is empty');
      }

      print('File downloaded successfully. Size: $fileSize bytes');

      setState(() {
        _downloadedFilePath = filePath;
        _isDownloading = false;
        _epubController = EpubController(
          document: EpubReader.readBook(File(filePath).readAsBytesSync()),
        );
      });

      _openEpubBook();
    } catch (e) {
      print('Download error: $e');
      _showErrorDialog('Error downloading book: $e');
      setState(() {
        _isDownloading = false;
        _downloadProgress = 0.0;
      });
    }
  }

  void _openEpubBook() async {
    if (_downloadedFilePath == null || _epubController == null) {
      print('No file path or controller available');
      return;
    }
    setState(() {
      _showReader = true;
    });
  }

  void _showSuccessDialog(String message, {bool openBook = false}) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Success'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              if (openBook) {
                _openEpubBook();
              }
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showTextStylePopover(BuildContext context) {
    showPopover(
      context: context,
      bodyBuilder: (context) => _buildPopoverContent(),
      direction: PopoverDirection.top,
      backgroundColor: Colors.white,
      arrowHeight: 15,
      arrowWidth: 30,
      width: 280,
    );
  }

  Widget _buildPopoverContent() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter popoverSetState) {
        final List<Color> colorPalette = [
          Colors.white,
          const Color(0xFFFFE9CF),
          const Color(0xFFC0C0C0),
          const Color(0xFF323232),
        ];

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    dropdownColor: Colors.white,
                    value: _selectedFontName,
                    items: _availableFonts.keys.map((String fontName) {
                      return DropdownMenuItem<String>(
                        value: fontName,
                        child: Text(fontName,
                            style: _availableFonts[fontName]!(
                                textStyle: const TextStyle(fontSize: 16, color: Colors.black))),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedFontName = newValue;
                          _selectedFont = _availableFonts[newValue]!;
                        });
                        popoverSetState(() {});
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Font Size',
                      style: _selectedFont(textStyle: const TextStyle(fontSize: 16, color: Colors.black))),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () => setState(() => _fontSize = (_fontSize - 1).clamp(12.0, 28.0)),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () => setState(() => _fontSize = (_fontSize + 1).clamp(12.0, 28.0)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: colorPalette.map((color) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _readerBackgroundColor = color;
                      });
                      popoverSetState(() {});
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: _readerBackgroundColor == color ? Colors.blue : Colors.grey.shade300,
                          width: 2,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.format_align_left)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.format_line_spacing)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.format_align_center)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.format_align_justify)),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_showReader && _epubController != null) {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => setState(() => _showReader = false),
          ),
        ),
        drawer: Drawer(
          child: EpubViewTableOfContents(
            controller: _epubController!,
          ),
        ),
        backgroundColor: _readerBackgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              EpubView(
                controller: _epubController!,
                builders: EpubViewBuilders<DefaultBuilderOptions>(
                  options: DefaultBuilderOptions(
                    textStyle: _selectedFont(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: _fontSize,
                        height: _lineHeight,
                        color: const Color(0xFF323232),
                      ),
                    ),
                  ),
                  chapterDividerBuilder: (chapter) => const SizedBox(height: 10),
                ),
              ),
              // Positioned(
              //   top: 10,
              //   left: 10,
              //   child: IconButton(
              //     icon: const Icon(Icons.arrow_back),
              //     onPressed: () => setState(() => _showReader = false),
              //   ),
              // )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ),
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.text_fields),
                    onPressed: () => _showTextStylePopover(context),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // TODO: Implement Search
                },
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          GestureDetector(
            onTap: _toggleControls,
            child: Stack(
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.book.coverImageUrl ?? ''),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.book.title ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widget.book.author ?? '',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 40),
                            const Text(
                              'Swipe to read →',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: const Color(0xFFFFF3E0),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              Text(
                                widget.book.title ?? '',
                                style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'By ${widget.book.author ?? ''}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                widget.book.description ?? '',
                                style: TextStyle(
                                  fontSize: 16,
                                  height: 1.6,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              const SizedBox(height: 40),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (_showControls && _currentPage == 0) ...[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      child: SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: () => context.pop(),
                              ),
                              const Spacer(),
                              if (_downloadedFilePath != null)
                                IconButton(
                                  icon: const Icon(Icons.menu_book),
                                  color: Colors.white,
                                  onPressed: _openEpubBook,
                                  tooltip: 'Reopen Book',
                                ),
                              if (_isDownloading)
                                const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
                if (_showControls)
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 2,
                        effect: WormEffect(
                          dotColor: Colors.grey.withOpacity(0.3),
                          activeDotColor: Theme.of(context).primaryColor,
                          dotHeight: 8,
                          dotWidth: 8,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          if (_isDownloading)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black.withOpacity(0.8),
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Downloading...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      value: _downloadProgress,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${(_downloadProgress * 100).toStringAsFixed(1)}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
