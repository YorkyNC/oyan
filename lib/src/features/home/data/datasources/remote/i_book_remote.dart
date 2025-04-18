import 'package:fpdart/fpdart.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/entities/get_books_entity.dart';

import '../../../domain/requests/get_book_request.dart';

abstract class IBookRemote {
  Future<Either<DomainException, GetBooksEntity>> getBook(
    GetBookRequest file,
  );
}
