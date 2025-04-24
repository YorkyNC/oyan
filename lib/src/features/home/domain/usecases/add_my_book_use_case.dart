import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/add_my_book_entity.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../repositories/i_book_repository.dart';

@lazySingleton
class AddMyBookUseCase extends UseCase<AddMyBookEntity, AddMyBooksRequest> {
  final IBookRepository _repository;

  AddMyBookUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, AddMyBookEntity>> execute(AddMyBooksRequest requestModel) {
    return _repository.addMyBook(requestModel);
  }
}
