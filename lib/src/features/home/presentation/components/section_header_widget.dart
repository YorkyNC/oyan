// File: lib/src/presentation/pages/home/home_page.dart

import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final List<Book> books;
  final bool showSeeAll;

  const SectionHeaderWidget({
    super.key,
    required this.title,
    this.showSeeAll = false,
    required this.books,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        if (showSeeAll)
          TextButton(
            onPressed: () {
              context.push(
                RoutePaths.seeAll,
                extra: {
                  'title': title,
                  'books': books,
                },
              );
            },
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              context.loc.seeAll,
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: context.colors.main,
              ),
            ),
          ),
      ],
    );
  }
}
