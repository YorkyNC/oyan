import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class BookStatsWidget extends StatelessWidget {
  final Book book;

  const BookStatsWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildStat(context.loc.pages, book.pageCount.toString(), false),
        _buildVerticalDivider(),
        _buildStat(context.loc.reading, '0', false),
        _buildVerticalDivider(),
        _buildStat(context.loc.ageLimit, book.ageLimit.toString(), true),
        _buildVerticalDivider(),
        _buildStat(context.loc.rating, book.rating.toString(), false),
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

  Widget _buildStat(String label, String value, bool isMature) {
    if (isMature) {
      final maturityLevel = value.contains('MATURE') ? '18+' : '12+';
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              maturityLevel,
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color(0xffA2ADD0),
              ),
            ),
          ],
        ),
      );
    }

    return Expanded(
      child: Column(
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
            textAlign: TextAlign.center,
            maxLines: 1,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: const Color(0xffA2ADD0),
            ),
          ),
        ],
      ),
    );
  }
}
