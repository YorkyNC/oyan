import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/presentation/model/example_model.dart';

class BookMapper {
  static BookModel toModel(Book book) {
    return BookModel(
      title: book.title ?? '',
      author: book.author ?? '',
      coverUrl: book.coverImageUrl ?? '',
    );
  }

  static List<BookModel> toModelList(List<Book>? books) {
    if (books == null) return [];
    return books.map((book) => toModel(book)).toList();
  }
}
