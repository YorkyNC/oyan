import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../repositories/i_book_repository.dart';
import '../requests/get_book_by_id_request.dart';

@lazySingleton
class GetBookByIdUseCase extends UseCase<Book, GetBookByIdRequest> {
  final IBookRepository _repository;

  GetBookByIdUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, Book>> execute(GetBookByIdRequest requestModel) {
    return _repository.getBookById(requestModel);
  }
}
