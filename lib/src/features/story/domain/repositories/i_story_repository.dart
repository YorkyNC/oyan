import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/story/domain/entities/get_daily_excerpts.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class IStoryRepository {
  Future<Either<DomainException, GetDailyExcerpts>> getDailyExcerpts(
    GetDailyExcerptsRequest request,
  );
  Future<Either<DomainException, GetBooksEntity>> getDailyHits(
    GetDailyHitsRequest request,
  );
}
