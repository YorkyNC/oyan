import 'package:flutter/material.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/auth/role_notifier.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/news/domain/entities/post_entity.dart';
import 'package:oyan/src/features/news/domain/requests/get_posts_request.dart';
import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:oyan/src/features/news/presentation/news_card_skeleton.dart';
import 'package:provider/provider.dart' as p;

class FirstNewsWidget extends StatefulWidget {
  const FirstNewsWidget({super.key});

  @override
  FirstNewsWidgetState createState() => FirstNewsWidgetState();
}

class FirstNewsWidgetState extends State<FirstNewsWidget> {
  final ScrollController _scrollController = ScrollController();
  final NewsBloc _newsBloc = getIt<NewsBloc>();
  int pageNum = 0;
  List<PostEntity> _posts = [];
  bool _isLoading = false;
  late String _currentRoleId;

  @override
  void initState() {
    super.initState();
    _currentRoleId = context.read<RoleNotifier>().currentRoleId;
    _scrollController.addListener(_onScroll);
    _loadInitialPosts();
  }

  void refreshNews() {
    setState(() {
      pageNum = 0;
      _posts.clear();
    });
    _loadInitialPosts();
  }

  void _loadInitialPosts() {
    final roleNotifier = context.read<RoleNotifier>();
    _newsBloc.add(NewsEvent.getPosts(_createGetPostsRequest(pageNum: pageNum, roleNotifier: roleNotifier)));
  }

  GetPostsRequest _createGetPostsRequest({required int pageNum, required RoleNotifier roleNotifier}) {
    // Base request parameters
    final requestParams = {
      'resolution': 480,
      'limit': 10,
      'offset': pageNum * 10,
      'orderAsc': false,
      'schoolId': schoolId,
      'role': roleNotifier.currentRole,
    };

    // Add childId only if the current role is parent
    if (roleNotifier.currentRole == 'parent') {
      requestParams['childId'] = roleNotifier.currentRoleId;
    }

    if (roleNotifier.currentRole == 'teacher') {
      requestParams['feedType'] = 'teacher_feed';
    } else {
      requestParams['feedType'] = 'class_feed';
    }

    return GetPostsRequest(
      resolution: requestParams['resolution'] as int,
      limit: requestParams['limit'] as int,
      offset: requestParams['offset'] as int,
      orderAsc: requestParams['orderAsc'] as bool,
      feedType: requestParams['feedType'] as String,
      schoolId: requestParams['schoolId'] as String,
      role: requestParams['role'] as String,
      childId: requestParams['childId'] as String?,
    );
  }

  @override
  Widget build(BuildContext context) {
    return p.Consumer<RoleNotifier>(
      builder: (context, roleNotifier, _) {
        if (_currentRoleId != roleNotifier.currentRoleId) {
          _currentRoleId = roleNotifier.currentRoleId;
          _newsBloc.add(NewsEvent.getPosts(_createGetPostsRequest(pageNum: 0, roleNotifier: roleNotifier)));
        }
        return BaseBlocWidget<NewsBloc, NewsEvent, NewsState>(
          bloc: _newsBloc,
          builder: (context, state, bloc) {
            return state.maybeWhen(
              orElse:
                  () => ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const NewsCardSkeleton(),
                    separatorBuilder: (context, index) => const SizedBox(height: 16),
                    itemCount: 5,
                  ),
              loaded: (viewModel) {
                if (pageNum == 0) {
                  _posts = List.from(viewModel.posts);
                } else {
                  _posts = List.from(_posts)..addAll(viewModel.posts);
                }

                _isLoading = false;

                return ShaderMask(
                  shaderCallback: (Rect rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.transparent, Colors.transparent, Colors.white],
                      stops: [0, 0.05, 0.975, 1.0],
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.dstOut,
                  child: RefreshIndicator(
                    onRefresh: () {
                      refreshNews();
                      return Future.delayed(const Duration(seconds: 2));
                    },
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        if (index >= _posts.length) {
                        } else {
                          return _buildPostItem(_posts[index], index);
                        }
                        return null;
                      },
                      itemCount: viewModel.hasReachedMax ? _posts.length : _posts.length + 1,
                      controller: _scrollController,
                    ),
                  ),
                );
              },
              error: (message) => Center(child: Text('Error: $message')),
            );
          },
        );
      },
    );
  }

  Widget _buildPostItem(PostEntity post, int index) {
    final tagString =
        post.tags?.isNotEmpty == true
            ? post.tags!.where((tag) => tag != null).map((tag) => tag!.name).join(', ')
            : null;
    return const SizedBox();

    // NewsCard(
    //   tag: tagString,
    //   images: post.attachments!,
    //   title: post.title,
    //   subtext: post.content,
    //   index: index,
    //   date: DateFormat('dd.MM.yyyy').format(DateTime.parse(post.createdDate)),
    //   onButtonPressed: () {},
    // );
  }

  void _onScroll() {
    if (_isBottom && !_isLoading) {
      _isLoading = true;
      pageNum++;
      final roleNotifier = context.read<RoleNotifier>();
      _newsBloc.add(NewsEvent.getPosts(_createGetPostsRequest(pageNum: pageNum, roleNotifier: roleNotifier)));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
}
