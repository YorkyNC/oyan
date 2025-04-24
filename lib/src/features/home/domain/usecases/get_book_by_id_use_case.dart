import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/book_repository_impl.dart';
import '../entities/get_book_by_id_entity.dart';
import '../repositories/i_book_repository.dart';
import '../requests/get_book_by_id_request.dart';

@lazySingleton
class GetBookByIdUseCase extends UseCase<GetBookByIdEntity, GetBookByIdRequest> {
  final IBookRepository _repository;

  GetBookByIdUseCase(@Named.from(BookRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetBookByIdEntity>> execute(GetBookByIdRequest requestModel) {
    return _repository.getBookById(requestModel);
  }
}
