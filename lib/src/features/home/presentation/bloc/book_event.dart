part of 'book_bloc.dart';

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.started() = _Started;

  const factory BookEvent.getBooks(GetBookRequest request) = _GetBooks;
  const factory BookEvent.getMyBooks(MyBookRequest request) = _GetMyBooks;
  const factory BookEvent.addMyBook(AddMyBooksRequest request) = _AddMyBook;
  const factory BookEvent.getBookById(GetBookByIdRequest request) = _GetBookById;
}
