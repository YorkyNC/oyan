import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/comments/bloc/comment_bloc.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';
import 'package:oyan/src/features/comments/domain/requests/get_comments_request.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/my-books/presentation/rating_button.dart';
import 'package:oyan/src/features/my-books/presentation/review_item.dart';

class BookCommentsTab extends StatefulWidget {
  final Book book;
  final Function(double) onRatingUpdated;

  const BookCommentsTab({
    super.key,
    required this.book,
    required this.onRatingUpdated,
  });

  @override
  State<BookCommentsTab> createState() => _BookCommentsTabState();
}

class _BookCommentsTabState extends State<BookCommentsTab> {
  double _selectedRating = 0;
  final TextEditingController _commentController = TextEditingController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _selectedRating = 0;
  }

  void _onRatingChanged(double rating) {
    setState(() {
      _selectedRating = _selectedRating == rating ? 0 : rating;
    });
  }

  void _showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Comment added successfully',
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: context.colors.main,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(16),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _updateBookRating() {
    final currentRating = double.tryParse(widget.book.rating ?? '0') ?? 0;
    final newRating = (currentRating + _selectedRating) / 2;
    widget.book.copyWith(rating: newRating.toString());
  }

  @override
  Widget build(BuildContext context) {
    final bool isRatingSelected = _selectedRating > 0;

    return BaseBlocWidget<CommentBloc, CommentEvent, CommentState>(
      bloc: getIt<CommentBloc>(),
      starterEvent: CommentEvent.getComments(GetCommentsRequest(bookId: widget.book.id ?? 0)),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const ShimmerContainer(width: double.infinity, height: 50),
              const SizedBox(height: 14),
              Row(
                children: List.generate(
                  5,
                  (index) => const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ShimmerContainer(width: double.infinity, height: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 19),
              const Align(
                alignment: Alignment.centerRight,
                child: ShimmerContainer(width: 100, height: 40),
              ),
              const SizedBox(height: 16),
              const ShimmerContainer(width: 150, height: 20),
              const SizedBox(height: 16),
              ...List.generate(
                  1,
                  (index) => const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: ShimmerContainer(width: double.infinity, height: 100),
                      )),
            ],
          ),
          error: (error) =>
              Center(child: Text(error, style: GoogleFonts.openSans(fontSize: 16, fontWeight: FontWeight.w600))),
          loaded: (viewModel) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                TextField(
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff323232),
                  ),
                  controller: _commentController,
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
                            child: RatingButton(
                              rating: rating.toDouble(),
                              isSelected: _selectedRating >= rating,
                              onPressed: () {
                                if (_commentController.text.trim().isNotEmpty) {
                                  _onRatingChanged(rating.toDouble());
                                }
                                //we are not able to change rating if the comment is empty
                              },
                            ),
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 19),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isRatingSelected ? context.colors.main : const Color(0xffEBF0FF),
                            foregroundColor: isRatingSelected && _commentController.text.trim().isNotEmpty
                                ? Colors.white
                                : const Color(0xffA2ADD0),
                            elevation: 0,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: isRatingSelected && !_isLoading && _commentController.text.trim().isNotEmpty
                              ? () async {
                                  setState(() {
                                    _isLoading = true;
                                  });
                                  bloc.add(
                                    CommentEvent.addComment(
                                      AddCommentRequest(
                                        bookId: widget.book.id ?? 0,
                                        content: _commentController.text,
                                        rate: _selectedRating.toInt(),
                                      ),
                                    ),
                                  );

                                  widget.onRatingUpdated(_selectedRating);
                                  _commentController.clear();
                                  setState(() {
                                    _selectedRating = 0;
                                    _isLoading = false;
                                  });
                                  _showSuccessSnackBar();
                                  // context.pop();
                                }
                              : null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 31),
                            child: _isLoading
                                ? const SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                    ),
                                  )
                                : Text(
                                    'Send',
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: isRatingSelected ? Colors.white : const Color(0xffA2ADD0),
                                    ),
                                  ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Ratings and reviews',
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff323232),
                  ),
                ),
                const SizedBox(height: 16),
                ...(viewModel.comments?.results ?? []).map((comment) {
                  return ReviewItem(review: comment);
                }).toList(),
              ],
            );
          },
        );
      },
    );
  }
}
