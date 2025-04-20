import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/genre/domain/entities/add_genre_entity.dart';
import 'package:oyan/src/features/genre/domain/entities/genre_entity.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../requests/add_genre_request.dart';
import '../requests/get_genre_request.dart';

abstract class IGenreRepository {
  Future<Either<DomainException, GenreEntity>> getGenre(
    GetGenreRequest request,
  );
  Future<Either<DomainException, AddGenreEntity>> addGenre(
    AddGenreRequest request,
  );
}
