// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/presentation/components/image_widget.dart';

class BookGridWidget extends StatelessWidget {
  final List<Book> books;
  final double height;

  const BookGridWidget({
    super.key,
    required this.books,
    this.height = 180,
  });

  @override
  Widget build(BuildContext context) {
    final displayedBooks = books.take(7).toList();

    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: displayedBooks.length,
        itemBuilder: (context, index) {
          final book = displayedBooks[index];
          return GestureDetector(
            onTap: () {
              context.push(RoutePaths.booksDetails, extra: book);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: ImageWidget(
                  imageUrl: book.coverImageUrl ?? '',
                  width: 120,
                  height: height,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
