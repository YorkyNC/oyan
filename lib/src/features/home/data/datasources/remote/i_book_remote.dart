import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/home/domain/entities/add_my_book_entity.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_by_id_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/entities/get_books_entity.dart';
import '../../../domain/entities/get_my_books_entity.dart';
import '../../../domain/requests/get_book_request.dart';
import '../../../domain/requests/my_book_request.dart';

abstract class IBookRemote {
  Future<Either<DomainException, GetBooksEntity>> getBook(
    GetBookRequest file,
  );
  Future<Either<DomainException, GetMyBooksEntity>> getMyBook(
    MyBookRequest file,
  );
  Future<Either<DomainException, AddMyBookEntity>> addMyBook(
    AddMyBooksRequest file,
  );
  Future<Either<DomainException, Book>> getBookById(
    GetBookByIdRequest file,
  );
}
