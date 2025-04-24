import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/home/domain/entities/my_book_entity.dart';
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

  final List<Map<String, dynamic>> _tabs = [
    {
      'label': 'Reading',
      'filter': 'to_read',
    },
    {
      'label': 'Complete',
      'filter': 'completed',
    },
    {
      'label': 'Favorite',
      'filter': 'favourite',
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(_handleTabChange);
    _bookBloc = getIt<BookBloc>();
    _loadBooksForCurrentTab();
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      _loadBooksForCurrentTab();
      setState(() {});
    }
  }

  void _loadBooksForCurrentTab() {
    final currentTab = _tabs[_tabController.index];
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
          title: const Text(
            'My book',
            style: TextStyle(
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
                        return const Center(
                          child: CircularProgressIndicator(
                            color: Colors.black,
                          ),
                        );
                      },
                      loaded: (viewModel) {
                        return TabBarView(
                          controller: _tabController,
                          children: [
                            _TabContent(
                              status: 'to_read',
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => ReadingBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverUrl ?? '',
                                progress: 0.0,
                                onContinuePressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Continue reading: ${book.title}')),
                                  );
                                },
                              ),
                            ),
                            _TabContent(
                              status: 'completed',
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => CompletedBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverUrl ?? '',
                                onReadAgainPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Read again: ${book.title}')),
                                  );
                                },
                              ),
                            ),
                            _TabContent(
                              status: 'favourite',
                              books: viewModel.myBooks?.results ?? [],
                              buildItem: (book) => FavoriteBookItem(
                                title: book.title ?? '',
                                author: book.author ?? '',
                                coverUrl: book.coverUrl ?? '',
                                onReadPressed: () {
                                  context.push(
                                    RoutePaths.booksDetails,
                                    extra: book,
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
      tabs: _tabs.map((tab) => Tab(text: tab['label'])).toList(),
    );
  }
}

class _TabContent extends StatelessWidget {
  final String status;
  final List<MyBookEntity> books;
  final Widget Function(MyBookEntity book) buildItem;

  const _TabContent({
    required this.status,
    required this.books,
    required this.buildItem,
  });

  @override
  Widget build(BuildContext context) {
    final filteredBooks = books.where((book) {
      if (status == 'favourite') {
        return book.status == 'favourite' || book.status == 'favorite';
      }
      return book.status == status;
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
              'No books found',
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
