import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/genre_repository_impl.dart';
import '../entities/genre_entity.dart';
import '../repositories/i_genre_repository.dart';
import '../requests/get_genre_request.dart';

@lazySingleton
class GetGenreUseCase extends UseCase<GenreEntity, GetGenreRequest> {
  final IGenreRepository _repository;

  GetGenreUseCase(@Named.from(GenreRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GenreEntity>> execute(GetGenreRequest requestModel) {
    return _repository.getGenre(requestModel);
  }
}
