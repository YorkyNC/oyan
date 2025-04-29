import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/add_my_book_entity.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/home/domain/entities/get_my_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_by_id_request.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';
import 'package:oyan/src/features/story/data/datasources/remote/book_remote_impl.dart';
import 'package:oyan/src/features/story/data/datasources/remote/i_story_remote.dart';
import 'package:oyan/src/features/story/domain/entities/get_daily_excerpts.dart';
import 'package:oyan/src/features/story/domain/repositories/i_story_repository.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';

@named
@LazySingleton(as: IStoryRepository)
class StoryRepositoryImpl implements IStoryRepository {
  final IStoryRemote storyImpl;
  StoryRepositoryImpl(@Named.from(StoryRemoteImpl) this.storyImpl);

  @override
  Future<Either<DomainException, GetDailyExcerpts>> getDailyExcerpts(GetDailyExcerptsRequest file) async {
    try {
      final requests = await storyImpl.getDailyExcerpts(file);

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
  Future<Either<DomainException, GetBooksEntity>> getDailyHits(GetDailyHitsRequest request) async {
    try {
      final requests = await storyImpl.getDailyHits(request);

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
