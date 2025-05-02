import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';
import 'package:oyan/src/features/my-books/presentation/completed_book_item.dart';
import 'package:oyan/src/features/my-books/presentation/favorite_book_item.dart';
import 'package:oyan/src/features/my-books/presentation/reading_book_item.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({super.key});

  @override
  State<MyBooksPage> createState() => _BookTrackingPageState();
}

class _BookTrackingPageState extends State<MyBooksPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late BookBloc _bookBloc;
  bool _isInit = false;

  List<Map<String, dynamic>> _getTabs(BuildContext context) => [
        {
          'label': context.loc.reading,
          'filter': 'to_read',
        },
        {
          'label': context.loc.complete,
          'filter': 'completed',
        },
        {
          'label': context.loc.favorite,
          'filter': 'favourite',
        },
      ];

  @override
  void initState() {
    super.initState();
    _bookBloc = getIt<BookBloc>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInit) {
      _tabController = TabController(length: _getTabs(context).length, vsync: this);
      _tabController.addListener(_handleTabChange);
      _loadBooksForCurrentTab();
      _isInit = true;
    }
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      _loadBooksForCurrentTab();
      setState(() {});
    }
  }

  void _loadBooksForCurrentTab() {
    final currentTab = _getTabs(context)[_tabController.index];
    _bookBloc.add(
      BookEvent.getMyBooks(
        MyBookRequest(
          username: st.getUsername()!,
          filter: currentTab['filter'],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bookBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            context.loc.myBooks,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Column(
            children: [
              _buildTabs(),
              const SizedBox(height: 16),
              Expanded(
                child: BaseBlocWidget<BookBloc, BookEvent, BookState>(
                  bloc: _bookBloc,
                  builder: (context, state, bloc) {
                    return state.maybeWhen(
                      orElse: () {
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: Row(
                                children: [
                                  ShimmerContainer(width: 100, height: 150),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ShimmerContainer(width: double.infinity, height: 24),
                                        SizedBox(height: 8),
                                        ShimmerContainer(width: 150, height: 20),
                                        SizedBox(height: 16),
                                        ShimmerContainer(width: 100, height: 40),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      loaded: (viewModel) {
                        return TabBarView(
                          controller: _tabController,
                          children: [
                            _TabContent(
                              status: PersonalBookType.toRead,
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => ReadingBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverImageUrl ?? '',
                                progress: 0.0,
                                onContinuePressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Continue reading: ${book.title}')),
                                  );
                                },
                              ),
                            ),
                            _TabContent(
                              status: PersonalBookType.completed,
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => CompletedBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverImageUrl ?? '',
                                onReadAgainPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Read again: ${book.title}')),
                                  );
                                },
                              ),
                            ),
                            _TabContent(
                              status: PersonalBookType.favourite,
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => FavoriteBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverImageUrl ?? '',
                                onReadPressed: () {
                                  print(book.id);
                                  context.push(
                                    RoutePaths.booksDetails,
                                    extra: {'id': book.id},
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      },
                      error: (error) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                error,
                                style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: context.colors.error500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: _loadBooksForCurrentTab,
                                child: const Text('Try Again'),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return TabBar(
      dividerColor: Colors.transparent,
      controller: _tabController,
      indicatorColor: context.colors.main,
      indicatorWeight: 3,
      labelColor: context.colors.main,
      unselectedLabelColor: context.colors.gray400,
      labelStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500, fontSize: 17),
      tabs: _getTabs(context).map((tab) => Tab(text: tab['label'])).toList(),
    );
  }
}

class _TabContent extends StatelessWidget {
  final PersonalBookType status;
  final List<Book> books;
  final Widget Function(Book book) buildItem;

  const _TabContent({
    required this.status,
    required this.books,
    required this.buildItem,
  });

  @override
  Widget build(BuildContext context) {
    final filteredBooks = books.where((book) {
      if (status == PersonalBookType.favourite) {
        return book.userStatuses?.contains(PersonalBookType.favourite) ?? false;
      }
      if (status == PersonalBookType.toRead) {
        return book.userStatuses?.contains(PersonalBookType.toRead) ?? false;
      }
      if (status == PersonalBookType.completed) {
        return book.userStatuses?.contains(PersonalBookType.completed) ?? false;
      }
      return false;
    }).toList();

    if (filteredBooks.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.book_outlined,
              size: 64,
              color: context.colors.gray300,
            ),
            const SizedBox(height: 16),
            Text(
              context.loc.noBooksFound,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: context.colors.gray400,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: filteredBooks.length,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) => buildItem(filteredBooks[index]),
    );
  }
}
