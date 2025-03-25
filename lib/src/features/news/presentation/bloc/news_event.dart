part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.started() = _Started;

  const factory NewsEvent.addFeed(AddFeedRequest request) = _AddFeed;

  const factory NewsEvent.getFeed(GetFeedRequest request) = _GetFeed;

  const factory NewsEvent.getFeeds(GetFeedsRequest request) = _GetFeeds;

  const factory NewsEvent.addPost(AddPostRequest request) = _AddPost;

  const factory NewsEvent.getPost(GetPostRequest request) = _GetPost;

  const factory NewsEvent.getPosts(GetPostsRequest request) = _GetPosts;
}
