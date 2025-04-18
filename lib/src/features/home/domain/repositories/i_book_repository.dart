import 'package:fpdart/fpdart.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../entities/get_books_entity.dart';
import '../requests/get_book_request.dart';

abstract class IBookRepository {
  Future<Either<DomainException, GetBooksEntity>> getBook(
    GetBookRequest request,
  );
}
