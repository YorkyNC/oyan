import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/core/base/base_usecase/result.dart';
import 'package:oyan/src/core/exceptions/domain_exception.dart';
import 'package:oyan/src/core/services/injectable/service_register_proxy.dart';
import 'package:oyan/src/features/news/domain/entities/post_entity.dart';
import 'package:oyan/src/features/news/domain/requests/add_feed_request.dart';
import 'package:oyan/src/features/news/domain/usecases/add_feed_use_case.dart';
import 'package:oyan/src/features/news/domain/usecases/get_post_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/services/injectable/injectable_service.dart';
import '../../domain/entities/feed_entity.dart';
import '../../domain/requests/add_post_request.dart';
import '../../domain/requests/get_feed_request.dart';
import '../../domain/requests/get_feeds_request.dart';
import '../../domain/requests/get_post_request.dart';
import '../../domain/requests/get_posts_request.dart';
import '../../domain/usecases/add_post_use_case.dart';
import '../../domain/usecases/get_feed_use_case.dart';
import '../../domain/usecases/get_feeds_use_case.dart';
import '../../domain/usecases/get_posts_use_case.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends BaseBloc<NewsEvent, NewsState> {
  NewsBloc(
    this.addFeedUseCase,
    this.getFeedUseCase,
    this.getFeedsUseCase,
    this.addPostUseCase,
    this.getPostUseCase,
    this.getPostsUseCase,
  ) : super(const _Initial());

  final AddFeedUseCase addFeedUseCase;

  final GetFeedUseCase getFeedUseCase;

  final GetFeedsUseCase getFeedsUseCase;

  final AddPostUseCase addPostUseCase;

  final GetPostUseCase getPostUseCase;

  final GetPostsUseCase getPostsUseCase;

  StreamSubscription? _newsStatusSubscription;

  NewsViewModel _viewModel = const NewsViewModel();

  @override
  Future<void> onEventHandler(NewsEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      addFeed: (request) => _addFeed(event as _AddFeed, emit),
      getFeed: (request) => _getFeed(event as _GetFeed, emit),
      getFeeds: (request) => _getFeeds(event as _GetFeeds, emit),
      addPost: (request) => _addPost(event as _AddPost, emit),
      getPost: (request) => _getPost(event as _GetPost, emit),
      getPosts: (request) => _getPosts(event as _GetPosts, emit),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _addFeed(_AddFeed event, Emitter emit) async {
    final result = await addFeedUseCase.call(event.request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith();

      return emit(_Loaded(viewModel: _viewModel));
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _getFeed(_GetFeed event, Emitter emit) async {
    final result = await getFeedUseCase.call(event.request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith();

      return emit(_Loaded(viewModel: _viewModel));
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _getFeeds(_GetFeeds event, Emitter emit) async {
    final result = await getFeedsUseCase.call(event.request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith(feeds: result.data!);

      return emit(_Loaded(viewModel: _viewModel));
    }

    return emit(_Error(result.failure!.message));
  }

  Future<void> _addPost(_AddPost event, Emitter emit) async {
    final result = await addPostUseCase.call(event.request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith();

      return emit(const _Loading());
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _getPost(_GetPost event, Emitter emit) async {
    final result = await getPostUseCase.call(event.request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith();

      return emit(_Loaded(viewModel: _viewModel));
    }
    return emit(_Error(result.failure!.message));
  }

  Future<void> _getPosts(_GetPosts event, Emitter emit) async {
    // If we've already reached the max, don't fetch more.
    if (_viewModel.hasReachedMax) {
      return;
    }

    // emit(const _Loading());

    final Result<List<PostEntity>, DomainException> result = await getPostsUseCase.call(event.request);

    if (result.isSuccessful) {
      final posts = result.data!;

      if (event.request.offset == 0) {
        emit(_Loaded(viewModel: _viewModel.copyWith(posts: [])));
      }

      // If no posts are returned, we have reached the max
      final hasReachedMax = posts.isEmpty;

      // Append the new posts to the existing list
      if (posts.isNotEmpty) {
        _viewModel = _viewModel.copyWith(posts: posts, hasReachedMax: hasReachedMax);
      } else {
        _viewModel = _viewModel.copyWith(posts: [], hasReachedMax: hasReachedMax);
      }

      return emit(_Loaded(viewModel: _viewModel));
    } else {
      return emit(_Error(result.failure!.message));
    }
  }

  @override
  Future<void> close() {
    _newsStatusSubscription?.cancel();
    _newsStatusSubscription = null;
    getIt.resetBloc(this);
    return super.close();
  }
}
