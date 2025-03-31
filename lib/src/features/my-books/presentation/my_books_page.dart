import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/my-books/presentation/completed_book_item.dart';
import 'package:oyan/src/features/my-books/presentation/favorite_book_item.dart';
import 'package:oyan/src/features/my-books/presentation/reading_book_item.dart';
// Import the new classes
// import 'package:oyan/src/features/my-books/presentation/completed_book_item.dart';
// import 'package:oyan/src/features/my-books/presentation/favorite_book_item.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({super.key});

  @override
  State<MyBooksPage> createState() => _BookTrackingPageState();
}

class _BookTrackingPageState extends State<MyBooksPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My book',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildTabs(),
            const SizedBox(height: 16),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildReadingBooks(),
                  _buildCompletedBooks(),
                  _buildFavoriteBooks(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return TabBar(
      dividerColor: Colors.transparent,
      controller: _tabController,
      indicatorColor: context.colors.main,
      indicatorWeight: 3,
      labelColor: context.colors.main,
      unselectedLabelColor: context.colors.gray400,
      labelStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500, fontSize: 17),
      tabs: const [
        Tab(text: 'Reading'),
        Tab(text: 'Complete'),
        Tab(text: 'Favorite'),
      ],
    );
  }

  Widget _buildReadingBooks() {
    final books = [
      {
        'title': 'The story of a lonely boy',
        'author': 'Korina Villanueva',
        'coverUrl': 'assets/images/lonely_boy_cover.jpg',
        'progress': 0.23,
      },
      {
        'title': 'Love brings you home',
        'author': 'Helene Paquet',
        'coverUrl': 'assets/images/love_brings_home_cover.jpg',
        'progress': 0.5,
      },
    ];

    return ListView.builder(
      itemCount: books.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final book = books[index];
        return ReadingBookItem(
          title: book['title'] as String,
          author: book['author'] as String,
          coverUrl: book['coverUrl'] as String,
          progress: book['progress'] as double,
          onContinuePressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Continue reading: ${book['title']}')),
            );
          },
        );
      },
    );
  }

  Widget _buildCompletedBooks() {
    final completedBooks = [
      {
        'title': 'The story of a lonely boy',
        'author': 'Korina Villanueva',
        'coverUrl': 'assets/images/lonely_boy_cover.jpg',
      },
      {
        'title': 'The silent whisper',
        'author': 'J.R. Williams',
        'coverUrl': 'assets/images/silent_whisper_cover.jpg',
      },
    ];

    return ListView.builder(
      itemCount: completedBooks.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final book = completedBooks[index];
        return CompletedBookItem(
          title: book['title'] as String,
          author: book['author'] as String,
          coverUrl: book['coverUrl'] as String,
          onReadAgainPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Read again: ${book['title']}')),
            );
          },
        );
      },
    );
  }

  Widget _buildFavoriteBooks() {
    final favoriteBooks = [
      {
        'title': 'The story of a lonely boy',
        'author': 'Korina Villanueva',
        'coverUrl': 'assets/images/lonely_boy_cover.jpg',
      },
      {
        'title': 'Morning breeze',
        'author': 'Alex Morgan',
        'coverUrl': 'assets/images/morning_breeze_cover.jpg',
      },
    ];

    return ListView.builder(
      itemCount: favoriteBooks.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        final book = favoriteBooks[index];
        return FavoriteBookItem(
          title: book['title'] as String,
          author: book['author'] as String,
          coverUrl: book['coverUrl'] as String,
          onReadPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Reading: ${book['title']}')),
            );
          },
        );
      },
    );
  }
}
