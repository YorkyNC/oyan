import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/news/domain/entities/feed_entity.dart';
import 'package:oyan/src/features/news/domain/entities/post_entity.dart';
import 'package:oyan/src/features/news/domain/requests/add_feed_request.dart';
import 'package:oyan/src/features/news/domain/requests/add_post_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_feed_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_feeds_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_post_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_posts_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/repositories/i_news_repository.dart';
import '../datasources/remote/i_news_remote.dart';
import '../datasources/remote/news_remote_impl.dart';

@named
@LazySingleton(as: INewsRepository)
class NewsRepositoryImpl implements INewsRepository {
  final INewsRemote _newsImpl;
  NewsRepositoryImpl(@Named.from(NewsRemoteImpl) this._newsImpl);

  @override
  Future<Either<DomainException, String>> addPost(AddPostRequest request) async {
    try {
      final requests = await _newsImpl.addPost(request);

      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, PostEntity>> getPost(GetPostRequest request) async {
    try {
      final requests = await _newsImpl.getPost(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, List<PostEntity>>> getPosts(GetPostsRequest request) async {
    try {
      final requests = await _newsImpl.getPosts(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, String>> addFeed(AddFeedRequest request) async {
    try {
      final requests = await _newsImpl.addFeed(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, FeedEntity>> getFeed(GetFeedRequest request) async {
    try {
      final requests = await _newsImpl.getFeed(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, List<FeedEntity>>> getFeeds(GetFeedsRequest request) async {
    try {
      final requests = await _newsImpl.getFeeds(request);
      return requests.fold((error) => Left(error), (result) {
        return Right(result);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
