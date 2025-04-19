import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/my-books/presentation/rating_filter_button.dart';
import 'package:oyan/src/features/my-books/presentation/review_item.dart';

class BookCommentsTab extends StatefulWidget {
  final List<Book> reviews;

  const BookCommentsTab({
    Key? key,
    required this.reviews,
  }) : super(key: key);

  @override
  State<BookCommentsTab> createState() => _BookCommentsTabState();
}

class _BookCommentsTabState extends State<BookCommentsTab> {
  int _ratingFilter = 0;

  List<Book> get filteredReviews {
    if (_ratingFilter == 0) return widget.reviews;
    return widget.reviews.where((review) => review.rating == _ratingFilter).toList();
  }

  void _onRatingFilterChanged(int rating) {
    setState(() {
      _ratingFilter = _ratingFilter == rating ? 0 : rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isStarSelected = _ratingFilter > 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        TextField(
          decoration: InputDecoration(
            hintText: 'Leave comments',
            hintStyle: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color(0xffA2ADD0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xffEBF0FF),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
        ),
        const SizedBox(height: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                ...List.generate(5, (index) {
                  final rating = 5 - index;
                  return Expanded(
                    child: RatingFilterButton(
                      rating: rating,
                      label: rating.toString(),
                      isSelected: _ratingFilter == rating,
                      onPressed: () => _onRatingFilterChanged(rating),
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isStarSelected ? context.colors.main : const Color(0xffEBF0FF),
                    foregroundColor: isStarSelected ? Colors.white : const Color(0xffA2ADD0),
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: isStarSelected ? () {} : null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 31),
                    child: Text(
                      'Send',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: isStarSelected ? Colors.white : const Color(0xffA2ADD0),
                      ),
                    ),
                  )),
            ),
          ],
        ),
        Text(
          'Ratings and reviews',
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
        const SizedBox(height: 16),
        ...filteredReviews.map((review) {
          return ReviewItem(review: review);
        }).toList(),
      ],
    );
  }
}
