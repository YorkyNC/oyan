import 'dart:developer';

import 'package:dio/dio.dart';
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

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import 'i_news_remote.dart';

@named
@LazySingleton(as: INewsRemote)
class NewsRemoteImpl implements INewsRemote {
  NewsRemoteImpl(this.client);
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
  };

  @override
  Future<Either<DomainException, String>> addPost(AddPostRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      '${EndPoints.baseUrl}${EndPoints.school}/${request.schoolId}/post',
      data: request,
      options: Options(method: 'POST', headers: headers),
    );

    log(request.toString());

    return response.fold((error) => Left(error), (result) async {
      if (result.statusCode == 200 && result.statusCode == 201) {
        return Right(result.data);
      } else {
        return Left(UnknownException(message: result.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, PostEntity>> getPost(GetPostRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.post}/${request.postId}',
      options: Options(headers: headers),
    );

    return response.fold((error) => Left(error), (result) async {
      if (result.statusCode == 200) {
        return Right(PostEntity.fromJson(result.data));
      } else {
        return Left(UnknownException(message: result.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, List<PostEntity>>> getPosts(GetPostsRequest request) async {
    final queryParams = <String, dynamic>{
      'limit': request.limit,
      'offset': request.offset,
      'order_asc': request.orderAsc,
      'resolution': request.resolution,
      'role': request.role,
    };

    if (request.feedType != null) {
      queryParams['feed_type'] = request.feedType;
    }
    if (request.childId != null) {
      queryParams['child_id'] = request.childId;
    }

    queryParams['role'] = request.role;

    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.baseUrl}${EndPoints.school}/${request.schoolId}/post',
      queryParameters: queryParams,
      options: Options(method: 'GET', headers: headers),
    );

    return response.fold((error) => Left(error), (result) {
      if (result.statusCode == 200) {
        try {
          return Right((result.data['posts'] as List).map((e) => PostEntity.fromJson(e)).toList());
        } catch (e) {
          return Left(UnknownException(message: 'Failed to parse response: $e'));
        }
      } else {
        return Left(UnknownException(message: result.statusMessage ?? 'Unknown error'));
      }
    });
  }

  @override
  Future<Either<DomainException, String>> addFeed(AddFeedRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      EndPoints.feed,
      data: request,
      options: Options(headers: headers),
    );

    return response.fold((error) => Left(error), (result) async {
      if (result.statusCode == 200) {
        return Right(result.data);
      } else {
        return Left(UnknownException(message: result.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, FeedEntity>> getFeed(GetFeedRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.get(
      '${EndPoints.feed}/${request.feedId}',
      options: Options(headers: headers),
    );

    return response.fold((error) => Left(error), (result) async {
      if (result.statusCode == 200) {
        return Right(FeedEntity.fromJson(result.data));
      } else {
        return Left(UnknownException(message: result.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, List<FeedEntity>>> getFeeds(GetFeedsRequest request) async {
    final queryParams = <String, dynamic>{'limit': request.limit, 'offset': request.offset};

    final Either<DomainException, Response<dynamic>> response = await client.get(
      EndPoints.feed,
      queryParameters: queryParams,
      options: Options(headers: headers),
    );

    return response.fold((error) => Left(error), (result) async {
      if (result.statusCode == 200) {
        final List<FeedEntity> feeds = (result.data as List).map((e) => FeedEntity.fromJson(e)).toList();

        return Right(feeds);
      } else {
        return Left(UnknownException(message: result.statusMessage));
      }
    });
  }
}
