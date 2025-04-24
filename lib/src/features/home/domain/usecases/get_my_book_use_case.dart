import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/get_my_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../repositories/i_book_repository.dart';

@lazySingleton
class GetMyBookUseCase extends UseCase<GetMyBooksEntity, MyBookRequest> {
  final IBookRepository _repository;

  GetMyBookUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetMyBooksEntity>> execute(MyBookRequest requestModel) {
    return _repository.getMyBook(requestModel);
  }
}
