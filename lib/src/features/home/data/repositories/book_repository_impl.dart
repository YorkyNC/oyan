import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/add_my_book_entity.dart';
import 'package:oyan/src/features/home/domain/entities/get_my_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/get_books_entity.dart';
import '../../domain/repositories/i_book_repository.dart';
import '../../domain/requests/get_book_request.dart';
import '../datasources/remote/book_remote_impl.dart';
import '../datasources/remote/i_book_remote.dart';

@named
@LazySingleton(as: IBookRepository)
class BookRepositoryImpl implements IBookRepository {
  final IBookRemote bookImpl;
  BookRepositoryImpl(@Named.from(BookRemoteImpl) this.bookImpl);

  @override
  Future<Either<DomainException, GetBooksEntity>> getBook(GetBookRequest file) async {
    try {
      final requests = await bookImpl.getBook(file);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetMyBooksEntity>> getMyBook(MyBookRequest file) async {
    try {
      final requests = await bookImpl.getMyBook(file);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, AddMyBookEntity>> addMyBook(AddMyBooksRequest file) async {
    try {
      final requests = await bookImpl.addMyBook(file);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
