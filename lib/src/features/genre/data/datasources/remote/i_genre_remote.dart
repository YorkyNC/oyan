import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/genre/domain/entities/add_genre_entity.dart';
import 'package:oyan/src/features/genre/domain/requests/add_genre_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/entities/genre_entity.dart';

import '../../../domain/requests/get_genre_request.dart';

abstract class IGenreRemote {
  Future<Either<DomainException, GenreEntity>> getGenre(
    GetGenreRequest file,
  );
  Future<Either<DomainException, AddGenreEntity>> addGenre(
    AddGenreRequest file,
  );
}
