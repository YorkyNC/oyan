import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/my-books/presentation/book_comments_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_overview_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_stats_widget.dart';

class BookInformationPage extends StatefulWidget {
  const BookInformationPage({Key? key}) : super(key: key);

  @override
  State<BookInformationPage> createState() => _BookInformationPageState();
}

class _BookInformationPageState extends State<BookInformationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // Mock book data
  final BookModel book = BookModel(
    title: 'The story of a lonely boy',
    author: 'James Williams',
    year: '2025',
    pages: 238,
    reading: 123,
    bookmarks: 44,
    rating: 4.6,
    description:
        'The book was disappointing: a weak plot, flat/hollow characters, and lengthy descriptions. Expected more.',
  );

  // Mock reviews data
  final List<ReviewModel> reviews = [
    ReviewModel(
      id: 1,
      text: 'The book was disappointing: a weak plot, flat/hollow characters, and lengthy descriptions. Expected more.',
      rating: 2,
    ),
    ReviewModel(
      id: 2,
      text: 'The book was disappointing: a weak plot, flat/hollow characters, and lengthy descriptions. Expected more.',
      rating: 3,
    ),
    ReviewModel(
      id: 3,
      text: 'The book was disappointing: a weak plot, flat/hollow characters, and lengthy descriptions. Expected more.',
      rating: 5,
    ),
    ReviewModel(
      id: 4,
      text: 'The book was disappointing: a weak plot, flat/hollow characters, and lengthy descriptions. Expected more.',
      rating: 4,
    ),
  ];

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
                          image: const DecorationImage(
                            image: AssetImage('assets/book_cover.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Book title and author
                      Text(
                        book.title,
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        book.author,
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                      Text(
                        book.year,
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Book stats
                      BookStatsWidget(book: book),
                    ],
                  ),
                ),

                // Tab bar
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
                _tabController.index == 0 ? BookOverviewTab(book: book) : BookCommentsTab(reviews: reviews),

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

class BookModel {
  final String title;
  final String author;
  final String year;
  final int pages;
  final int reading;
  final int bookmarks;
  final double rating;
  final String description;

  BookModel({
    required this.title,
    required this.author,
    required this.year,
    required this.pages,
    required this.reading,
    required this.bookmarks,
    required this.rating,
    required this.description,
  });

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      title: map['title'] as String,
      author: map['author'] as String,
      year: map['year'] as String,
      pages: map['pages'] as int,
      reading: map['reading'] as int,
      bookmarks: map['bookmarks'] as int,
      rating: map['rating'] as double,
      description: map['description'] as String? ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'author': author,
      'year': year,
      'pages': pages,
      'reading': reading,
      'bookmarks': bookmarks,
      'rating': rating,
      'description': description,
    };
  }
}

class ReviewModel {
  final int id;
  final String text;
  final int rating;

  ReviewModel({
    required this.id,
    required this.text,
    required this.rating,
  });

  factory ReviewModel.fromMap(Map<String, dynamic> map) {
    return ReviewModel(
      id: map['id'] as int,
      text: map['text'] as String,
      rating: map['rating'] as int,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
      'rating': rating,
    };
  }
}
