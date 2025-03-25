import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/news/domain/entities/feed_entity.dart';
import 'package:oyan/src/features/news/domain/entities/post_entity.dart';
import 'package:oyan/src/features/news/domain/requests/add_feed_request.dart';
import 'package:oyan/src/features/news/domain/requests/add_post_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_feed_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_feeds_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_post_request.dart';
import 'package:oyan/src/features/news/domain/requests/get_posts_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class INewsRepository {
  Future<Either<DomainException, List<PostEntity>>> getPosts(GetPostsRequest request);

  Future<Either<DomainException, PostEntity>> getPost(GetPostRequest request);

  Future<Either<DomainException, String>> addPost(AddPostRequest request);

  Future<Either<DomainException, List<FeedEntity>>> getFeeds(GetFeedsRequest request);

  Future<Either<DomainException, FeedEntity>> getFeed(GetFeedRequest request);

  Future<Either<DomainException, String>> addFeed(AddFeedRequest request);
}
