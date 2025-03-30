import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/my-books/presentation/reading_book_item.dart';

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
  }

  @override
  void dispose() {
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
              child: _buildBookList(),
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

  Widget _buildBookList() {
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
        );
      },
    );
  }
}
