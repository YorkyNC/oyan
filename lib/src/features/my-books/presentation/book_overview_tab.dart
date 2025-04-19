import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class BookOverviewTab extends StatelessWidget {
  final Book book;

  const BookOverviewTab({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 14,
        ),
        Text(
          'About book',
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          book.description ?? '',
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: const Color(0xff323232),
          ),
        ),
      ],
    );
  }
}
