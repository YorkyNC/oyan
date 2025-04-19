// File: lib/src/presentation/pages/home/home_page.dart
import 'package:flutter/material.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_request.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';
import 'package:oyan/src/features/home/presentation/components/audiobook_grid_widget.dart';
import 'package:oyan/src/features/home/presentation/components/book_grid_widget.dart';
import 'package:oyan/src/features/home/presentation/components/category_tabs_widget.dart';
import 'package:oyan/src/features/home/presentation/components/search_bar_widget.dart';
import 'package:oyan/src/features/home/presentation/components/section_header_widget.dart';
import 'package:oyan/src/features/home/presentation/components/tab_bar_widget.dart';
import 'package:oyan/src/features/home/presentation/model/example_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;
  final bool _showAllRecommended = false;
  final bool _showAllPopular = false;
  final bool _showAllNew = false;

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<BookBloc, BookEvent, BookState>(
      bloc: getIt<BookBloc>(),
      starterEvent: const BookEvent.getBooks(GetBookRequest(type: BookType.recommended)),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (error) {
            return Center(
                child: Text(
              error.toString(),
              style: context.typography.textsmMedium.copyWith(
                color: context.colors.black,
              ),
            ));
          },
          loaded: (viewModel) {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16),
                            SearchBarWidget(
                              hintText:
                                  _selectedTabIndex == 0 ? 'Search book or author' : 'Search audiobook or narrator',
                            ),
                            const SizedBox(height: 16),
                            TabBarWidget(
                              selectedTabIndex: _selectedTabIndex,
                              onTabSelected: (index) {
                                setState(() {
                                  _selectedTabIndex = index;
                                });
                              },
                            ),
                            const SizedBox(height: 16),
                            CategoryTabsWidget(
                              selectedTabIndex: _selectedTabIndex,
                            ),
                            const SizedBox(height: 24),
                            SectionHeaderWidget(
                              title: _selectedTabIndex == 0 ? 'Recommendation' : 'Featured Audiobooks',
                              showSeeAll: true,
                              books: viewModel.recommendedBooks?.results ?? [],
                            ),
                            const SizedBox(height: 14),
                            _selectedTabIndex == 0
                                ? BookGridWidget(
                                    books: viewModel.recommendedBooks?.results ?? [],
                                    height: 180,
                                    // showAll: _showAllRecommended,
                                  )
                                : AudiobookGridWidget(audiobooks: recommendedAudiobooks, height: 180),
                            const SizedBox(height: 24),
                            SectionHeaderWidget(
                              title: _selectedTabIndex == 0 ? 'Popular books' : 'Popular audiobooks',
                              showSeeAll: true,
                              books: viewModel.popularBooks?.results ?? [],
                            ),
                            const SizedBox(height: 16),
                            _selectedTabIndex == 0
                                ? BookGridWidget(
                                    books: viewModel.popularBooks?.results ?? [],
                                    height: 180,
                                    // showAll: _showAllPopular,
                                  )
                                : AudiobookGridWidget(audiobooks: popularAudiobooks, height: 180),
                            const SizedBox(height: 24),
                            SectionHeaderWidget(
                              books: viewModel.newBooks?.results ?? [],
                              title: _selectedTabIndex == 0 ? 'New books' : 'New audiobooks',
                              showSeeAll: true,
                            ),
                            const SizedBox(height: 16),
                            _selectedTabIndex == 0
                                ? BookGridWidget(
                                    books: viewModel.newBooks?.results ?? [],
                                    height: 180,
                                    // showAll: _showAllNew,
                                  )
                                : AudiobookGridWidget(audiobooks: newAudiobooks, height: 180),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
