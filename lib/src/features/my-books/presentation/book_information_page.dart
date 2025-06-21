import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_by_id_request.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';
import 'package:oyan/src/features/my-books/presentation/book_comments_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_overview_tab.dart';
import 'package:oyan/src/features/my-books/presentation/book_stats_widget.dart';

class BookInformationPage extends StatefulWidget {
  final int? id;
  const BookInformationPage({super.key, this.id});

  @override
  State<BookInformationPage> createState() => _BookInformationPageState();
}

class _BookInformationPageState extends State<BookInformationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Book? _currentBook;
  bool isFavourite = false;
  bool isToRead = false;

  @override
  void initState() {
    print('Loading book with ID: ${widget.id}');
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  void _updateBookRating(double newRating) {
    setState(() {
      if (_currentBook != null) {
        final currentRating = double.tryParse(_currentBook!.rating ?? '0') ?? 0;
        final updatedRating = (currentRating + newRating) / 2;
        _currentBook = _currentBook!.copyWith(rating: updatedRating.toString());
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<BookBloc, BookEvent, BookState>(
      bloc: getIt<BookBloc>(),
      starterEvent: BookEvent.getBookById(GetBookByIdRequest(bookId: widget.id!)),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          loading: () => _buildLoadingState(),
          error: (error) => _buildErrorState(error),
          loaded: (viewModel) {
            _currentBook = viewModel.book;

            if (_currentBook?.userStatuses != null) {
              isFavourite = _currentBook!.userStatuses!.contains(PersonalBookType.favourite);
              isToRead = _currentBook!.userStatuses!.contains(PersonalBookType.toRead);
            }

            if (_currentBook == null) {
              return _buildErrorState('Book not found');
            }
            return _buildContent(context, _currentBook!);
          },
          orElse: () => _buildLoadingState(),
        );
      },
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Row(
          children: [
            SizedBox(width: 12),
            ShimmerContainer(width: 44, height: 44),
          ],
        ),
        actions: const [
          Row(
            children: [
              ShimmerContainer(width: 44, height: 44),
              SizedBox(width: 12),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(height: 16),
                        ShimmerContainer(width: 206.61761474609375, height: 283.0863952636719),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 260, height: 24),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 180, height: 24),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 100, height: 24),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShimmerContainer(width: 60, height: 48),
                              SizedBox(width: 6),
                              ShimmerContainer(width: 60, height: 48),
                              SizedBox(width: 6),
                              ShimmerContainer(width: 60, height: 48),
                              SizedBox(width: 6),
                              ShimmerContainer(width: 60, height: 48),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShimmerContainer(width: 80, height: 12),
                            SizedBox(width: 12),
                            ShimmerContainer(width: 80, height: 12),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShimmerContainer(width: 100, height: 12),
                          ],
                        ),
                        SizedBox(height: 20),
                        ShimmerContainer(width: double.infinity, height: 46),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            const SizedBox(width: 12),
            InkWell(
              onTap: () {
                context.pop();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffEBF0FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          error,
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, Book book) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  if (!isFavourite) {
                    context.read<BookBloc>().add(
                          BookEvent.addMyBook(
                            AddMyBooksRequest(
                              bookId: book.id ?? 0,
                              username: st.getUsername()!,
                              filter: 'favourite',
                            ),
                          ),
                        );
                    Future.delayed(const Duration(milliseconds: 500), () {
                      context.read<BookBloc>().add(
                            BookEvent.getBookById(
                              GetBookByIdRequest(bookId: widget.id!),
                            ),
                          );
                    });
                  } else {
                    context.read<BookBloc>().add(
                          BookEvent.addMyBook(
                            AddMyBooksRequest(
                              bookId: book.id ?? 0,
                              username: st.getUsername()!,
                              filter: 'none',
                            ),
                          ),
                        );
                    Future.delayed(const Duration(milliseconds: 500), () {
                      context.read<BookBloc>().add(
                            BookEvent.getBookById(
                              GetBookByIdRequest(bookId: widget.id!),
                            ),
                          );
                    });
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xffEBF0FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    isFavourite ? Icons.bookmark : Icons.bookmark_border_rounded,
                    color: isFavourite ? Colors.amber : Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
        leading: Row(
          children: [
            const SizedBox(width: 12),
            InkWell(
              onTap: () {
                context.pop();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffEBF0FF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      Container(
                        width: 206.61761474609375,
                        height: 283.0863952636719,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue, width: 2),
                          image: DecorationImage(
                            image: NetworkImage(book.coverImageUrl ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        book.title ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        book.author ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                      Text(
                        book.publishedYear?.toString() ?? '',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      BookStatsWidget(book: book),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    controller: _tabController,
                    indicatorColor: context.colors.main,
                    labelColor: context.colors.main,
                    unselectedLabelStyle: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffA2ADD0),
                    ),
                    labelStyle: GoogleFonts.openSans(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: context.colors.main,
                    ),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: context.loc.overview),
                      Tab(text: context.loc.comments.uppercaseFirst()),
                    ],
                  ),
                ),
                _tabController.index == 0
                    ? BookOverviewTab(book: book)
                    : BookCommentsTab(
                        book: book,
                        onRatingUpdated: _updateBookRating,
                      ),
                const SizedBox(height: 21),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: context.colors.main,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          if (!isToRead) {
                            context.read<BookBloc>().add(
                                  BookEvent.addMyBook(
                                    AddMyBooksRequest(
                                      username: st.getUsername()!,
                                      filter: 'to_read',
                                      bookId: book.id ?? 0,
                                    ),
                                  ),
                                );
                          }
                          context.push(RoutePaths.readBook, extra: {'book': book});
                        },
                        child: Text(
                          context.loc.read,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
