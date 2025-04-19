// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
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
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ImageWidget(
              imageUrl: book.coverImageUrl ?? '',
              width: 120,
              height: height,
            ),
          );
        },
      ),
    );
  }
}
