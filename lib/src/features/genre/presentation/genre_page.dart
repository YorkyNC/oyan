import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/genre/domain/requests/add_genre_request.dart';
import 'package:oyan/src/features/genre/domain/requests/get_genre_request.dart';
import 'package:oyan/src/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:oyan/src/features/home/presentation/components/search_bar_widget.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({super.key});

  @override
  State<GenrePage> createState() => _GenrePageState();
}

class _GenrePageState extends State<GenrePage> {
  final Set<int> selectedGenres = {};
  final int maxSelections = 5;

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<GenreBloc, GenreEvent, GenreState>(
      bloc: getIt<GenreBloc>(),
      starterEvent: const GenreEvent.getGenre(GetGenreRequest()),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () {
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      const ShimmerContainer(width: double.infinity, height: 50),
                      const SizedBox(height: 26),
                      Row(
                        children: [
                          const Expanded(child: ShimmerContainer(width: double.infinity, height: 50)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: const Color(0xffD9D9D9)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 9),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xffD9D9D9)),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: const Color(0xffD9D9D9)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(child: ShimmerContainer(width: double.infinity, height: 50)),
                        ],
                      ),
                      const SizedBox(height: 9),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xffD9D9D9)),
                        ),
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          const Expanded(child: ShimmerContainer(width: double.infinity, height: 50)),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: const Color(0xffD9D9D9)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const SizedBox(height: 16),
                      const ShimmerContainer(width: double.infinity, height: 50),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            );
          },
          error: (error) => Center(child: Text(error)),
          loaded: (viewModel) {
            final genres = viewModel.genres;
            return Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      const SearchBarWidget(
                        hintText: 'Search',
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Choose 5 your favourite genres',
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffA2ADD0),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 12,
                          children: genres!.data.map((genre) {
                            final isSelected = selectedGenres.contains(genre.id);
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (isSelected) {
                                    selectedGenres.remove(genre.id);
                                  } else if (selectedGenres.length < maxSelections) {
                                    selectedGenres.add(genre.id);
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected ? context.colors.main : const Color(0xFFF2F4FB),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  genre.genre,
                                  style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: isSelected ? Colors.white : const Color(0xff32323280),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 32),
                        child: SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: selectedGenres.length == maxSelections
                                ? () {
                                    bloc.add(GenreEvent.addGenre(AddGenreRequest(genres: selectedGenres.toList())));
                                  }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: context.colors.main,
                              foregroundColor: Colors.white,
                              disabledBackgroundColor: const Color(0xff6C7AED).withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              'Continue',
                              style: GoogleFonts.openSans(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
