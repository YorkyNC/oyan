import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/genre/domain/entities/add_genre_entity.dart';
import 'package:oyan/src/features/genre/domain/entities/genre_entity.dart';
import 'package:oyan/src/features/genre/domain/requests/add_genre_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/repositories/i_genre_repository.dart';
import '../../domain/requests/get_genre_request.dart';
import '../datasources/remote/genre_remote_impl.dart';
import '../datasources/remote/i_genre_remote.dart';

@named
@LazySingleton(as: IGenreRepository)
class GenreRepositoryImpl implements IGenreRepository {
  final IGenreRemote genreImpl;
  GenreRepositoryImpl(@Named.from(GenreRemoteImpl) this.genreImpl);

  @override
  Future<Either<DomainException, GenreEntity>> getGenre(GetGenreRequest file) async {
    try {
      final requests = await genreImpl.getGenre(file);

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
  Future<Either<DomainException, AddGenreEntity>> addGenre(AddGenreRequest request) async {
    try {
      final requests = await genreImpl.addGenre(request);

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
