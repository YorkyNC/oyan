import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/genre_repository_impl.dart';
import '../entities/add_genre_entity.dart';
import '../repositories/i_genre_repository.dart';
import '../requests/add_genre_request.dart';

@lazySingleton
class AddGenreUseCase extends UseCase<AddGenreEntity, AddGenreRequest> {
  final IGenreRepository _repository;

  AddGenreUseCase(@Named.from(GenreRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, AddGenreEntity>> execute(AddGenreRequest requestModel) {
    return _repository.addGenre(requestModel);
  }
}
