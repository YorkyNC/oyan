import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/my-books/presentation/book_information_page.dart';

class BookStatsWidget extends StatelessWidget {
  final BookModel book;

  const BookStatsWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStat('Pages', book.pages.toString()),
        _buildVerticalDivider(),
        _buildStat('Reading', book.reading.toString()),
        _buildVerticalDivider(),
        _buildStat('Bookmarks', book.bookmarks.toString()),
        _buildVerticalDivider(),
        _buildStat('Rating', book.rating.toString()),
      ],
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      height: 48,
      width: 1,
      color: const Color(
        0xffE1E6F5,
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: const Color(0xffA2ADD0),
          ),
        ),
      ],
    );
  }
}
