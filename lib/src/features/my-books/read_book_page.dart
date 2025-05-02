import 'dart:io';

import 'package:dio/dio.dart';
import 'package:epub_viewer/epub_viewer.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
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
  bool _showControls = true;
  int _currentPage = 0;
  bool _isDownloading = false;
  double _downloadProgress = 0.0;
  String? _downloadedFilePath;

  @override
  void initState() {
    print('Book read URL: ${widget.book.readUrl}');
    super.initState();
    _pageController.addListener(_onPageChange);
    // Start downloading automatically when page opens
    _downloadBook();
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChange);
    _pageController.dispose();
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
    return true; // iOS doesn't need storage permission for app's own directory
  }

  Future<void> _downloadBook() async {
    if (widget.book.readUrl == null) {
      _showErrorDialog('Download URL not available');
      return;
    }

    // Request storage permission for Android
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

      // Verify the file exists and has content
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
      });

      // Automatically open the book after successful download
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
    if (_downloadedFilePath == null) {
      print('No file path available');
      return;
    }

    try {
      print('Opening EPUB file: $_downloadedFilePath');

      // Verify file exists before trying to open it
      final file = File(_downloadedFilePath!);
      if (!await file.exists()) {
        throw Exception('EPUB file not found');
      }

      // Configure the EPUB viewer
      EpubViewer.setConfig(
        themeColor: Theme.of(context).primaryColor,
        identifier: "iosBook",
        scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
        allowSharing: true,
        enableTts: true,
        nightMode: false,
      );

      print('Opening EPUB viewer...');
      EpubViewer.open(
        _downloadedFilePath!,
        lastLocation: EpubLocator.fromJson({
          "bookId": widget.book.id?.toString() ?? '',
          "href": "/OEBPS/chapter1.xhtml",
          "created": DateTime.now().millisecondsSinceEpoch,
          "locations": {"cfi": "epubcfi(/0!/4/4[simple_book]/2/2/6)"}
        }),
      );
      print('EPUB viewer opened successfully');
    } catch (e) {
      print('Error opening EPUB: $e');
      _showErrorDialog('Error opening book: $e');
    }
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
                    // Second page with book content
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
                // Controls overlay
                if (_showControls && _currentPage == 0) ...[
                  // Top app bar
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
                // Page indicator
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
          // Download progress overlay
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
