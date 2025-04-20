// File: lib/src/presentation/pages/home/home_page.dart
import 'package:flutter/material.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
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

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<BookBloc, BookEvent, BookState>(
      bloc: getIt<BookBloc>(),
      starterEvent: const BookEvent.getBooks(GetBookRequest(type: BookType.recommended)),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () => const HomePageLoading(),
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

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const ShimmerContainer(width: double.infinity, height: 50),
                const SizedBox(height: 26),
                _buildSearchBarLoading(),
                const SizedBox(height: 23),
                _buildCategoryTabsLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
                const SizedBox(height: 28),
                _buildBookSectionLoading(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBarLoading() {
    return Row(
      children: [
        const Expanded(child: ShimmerContainer(width: double.infinity, height: 50)),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color(0xffD9D9D9)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryTabsLoading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        3,
        (index) => Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 38),
          decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
          child: const Center(
            child: Icon(
              Icons.image_outlined,
              size: 39,
              color: Color(0xff808080),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookSectionLoading() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerContainer(width: 167, height: 19),
            ShimmerContainer(width: 48, height: 19),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            3,
            (index) => Container(
              padding: const EdgeInsets.symmetric(vertical: 54, horizontal: 38),
              decoration: const BoxDecoration(color: Color(0xffEAEAEA)),
              child: const Center(
                child: Icon(
                  Icons.image_outlined,
                  size: 39,
                  color: Color(0xff808080),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
