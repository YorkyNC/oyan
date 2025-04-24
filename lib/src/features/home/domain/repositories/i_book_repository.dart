import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/home/domain/entities/get_my_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../entities/get_books_entity.dart';
import '../requests/get_book_request.dart';

abstract class IBookRepository {
  Future<Either<DomainException, GetBooksEntity>> getBook(
    GetBookRequest request,
  );
  Future<Either<DomainException, GetMyBooksEntity>> getMyBook(
    MyBookRequest request,
  );
}
