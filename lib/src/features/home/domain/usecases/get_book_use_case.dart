import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../entities/get_books_entity.dart';
import '../repositories/i_book_repository.dart';
import '../requests/get_book_request.dart';

@lazySingleton
class GetBookUseCase extends UseCase<GetBooksEntity, GetBookRequest> {
  final IBookRepository _repository;

  GetBookUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetBooksEntity>> execute(GetBookRequest requestModel) {
    return _repository.getBook(requestModel);
  }
}
