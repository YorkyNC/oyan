import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/date_time_extension.dart';
import 'package:oyan/src/features/comments/domain/entities/get_commets_response.dart';

class ReviewItem extends StatelessWidget {
  final Comment review;

  const ReviewItem({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(review.username ?? 'Anonymous',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color(0xffA2ADD0),
              )),
          const SizedBox(height: 6),
          Text(
            review.content ?? '',
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
                review.createdAt?.formatDate ?? '',
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA2ADD0),
                ),
              ),
              Row(
                children: [
                  ..._renderStars(review.rate ?? '0', size: 25),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _renderStars(String rating, {double size = 20}) {
    return List.generate(5, (index) {
      return Icon(
        index < double.parse(rating) ? Icons.star_rounded : Icons.star_rounded,
        size: size,
        color: index < double.parse(rating) ? Colors.amber : const Color(0xffA2ADD0),
      );
    });
  }
}
