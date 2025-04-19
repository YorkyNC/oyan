import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class ReviewItem extends StatelessWidget {
  final Book review;

  const ReviewItem({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bekzat S.',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color(0xffA2ADD0),
              )),
          const SizedBox(height: 6),
          Text(
            review.description ?? '',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color(0xff323232),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '14.02.2025',
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA2ADD0),
                ),
              ),
              Row(
                children: [
                  ..._renderStars(review.rating!, size: 25),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _renderStars(String rating, {double size = 16}) {
    return List.generate(5, (index) {
      return Icon(
        index < double.parse(rating) ? Icons.star_rounded : Icons.star_outline_rounded,
        size: size,
        color: index < double.parse(rating) ? Colors.yellow : Colors.grey[600],
      );
    });
  }
}
