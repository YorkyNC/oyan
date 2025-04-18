part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.started() = _Started;

  const factory BookEvent.getBooks(GetBookRequest request) = _GetBooks;
}
