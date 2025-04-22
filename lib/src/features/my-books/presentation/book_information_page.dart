import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/my-books/presentation/book_comments_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_overview_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_stats_widget.dart';

class BookInformationPage extends StatefulWidget {
  final Book book;
  const BookInformationPage({super.key, required this.book});

  @override
  State<BookInformationPage> createState() => _BookInformationPageState();
}

class _BookInformationPageState extends State<BookInformationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffEBF0FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.bookmark_border_rounded,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
        leading: Row(
          children: [
            const SizedBox(width: 12),
            InkWell(
              onTap: () {
                context.pop();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffEBF0FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),

                      // Book cover
                      Container(
                        width: 206.61761474609375,
                        height: 283.0863952636719,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue, width: 2),
                          image: DecorationImage(
                            image: NetworkImage(widget.book.coverImageUrl ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Book title and author
                      Text(
                        widget.book.title ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        widget.book.author ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                      Text(
                        widget.book.publishedYear?.toString() ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Book stats
                      BookStatsWidget(book: widget.book),
                    ],
                  ),
                ),

                Container(
                  color: Colors.white,
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    controller: _tabController,
                    indicatorColor: context.colors.main,
                    labelColor: context.colors.main,
                    unselectedLabelStyle: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffA2ADD0),
                    ),
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: context.colors.main,
                    ),
                    unselectedLabelColor: Colors.grey,
                    tabs: const [
                      Tab(text: 'Overview'),
                      Tab(text: 'Comments'),
                    ],
                  ),
                ),

                // Tab content
                _tabController.index == 0 ? BookOverviewTab(book: widget.book) : BookCommentsTab(book: widget.book),

                const SizedBox(height: 21),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.main,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Read book',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
