import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart' as entity;
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_request.dart';
import 'package:oyan/src/features/home/domain/usecases/get_book_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'book_bloc.freezed.dart';
part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends BaseBloc<BookEvent, BookState> {
  BookBloc(this.getBookUseCase) : super(const BookState.loading());

  final GetBookUseCase getBookUseCase;

  BookViewModel _viewModel = const BookViewModel();

  @override
  Future<void> onEventHandler(BookEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getBooks: (request) => _getBooks(event as _GetBooks, emit as Emitter<BookState>),
    );
  }

  Future<void> _started(_Started event) async {}
  Future<void> _getBooks(_GetBooks event, Emitter emit) async {
    emit(const BookState.loading());

    // Get recommended books
    final recommendedResult = await getBookUseCase.call(const GetBookRequest(type: BookType.recommended));
    if (recommendedResult.failure != null) {
      return emit(BookState.error(recommendedResult.failure!.message));
    }

    // Get popular books
    final popularResult = await getBookUseCase.call(const GetBookRequest(type: BookType.popular));
    if (popularResult.failure != null) {
      return emit(BookState.error(popularResult.failure!.message));
    }

    // Get new books
    final newResult = await getBookUseCase.call(const GetBookRequest(type: BookType.newBooks));
    if (newResult.failure != null) {
      return emit(BookState.error(newResult.failure!.message));
    }

    _viewModel = _viewModel.copyWith(
      recommendedBooks: recommendedResult.data,
      popularBooks: popularResult.data,
      newBooks: newResult.data,
    );

    return emit(BookState.loaded(viewModel: _viewModel));
  }
}
