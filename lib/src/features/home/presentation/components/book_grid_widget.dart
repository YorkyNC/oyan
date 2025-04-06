// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/home/presentation/components/image_widget.dart';
import 'package:oyan/src/features/home/presentation/model/example_model.dart';

class BookGridWidget extends StatelessWidget {
  final List<BookModel> books;
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
          return Container(
            margin: const EdgeInsets.only(right: 12),
            width: 114,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        context.push(RoutePaths.booksDetails);
                      },
                      child: ImageWidget(
                        imageUrl: book.coverUrl,
                        width: 114,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
