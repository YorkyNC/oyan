import 'package:flutter/material.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/services/auth/role_notifier.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/news/domain/entities/post_entity.dart';
import 'package:oyan/src/features/news/domain/requests/get_posts_request.dart';
import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:oyan/src/features/news/presentation/news_card_skeleton.dart';
import 'package:oyan/src/features/settings/domain/entities/user_token_entity.dart';
import 'package:provider/provider.dart' as p;

import '../../../core/router/router.dart';

class SecondNewsWidget extends StatefulWidget {
  const SecondNewsWidget({super.key});

  @override
  SecondNewsWidgetState createState() => SecondNewsWidgetState();
}

class SecondNewsWidgetState extends State<SecondNewsWidget> {
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

  UserTokenEntity user = UserTokenEntity.fromJson(Jwt.parseJwt(st.getToken()!));
  void _loadInitialPosts() {
    _newsBloc.add(
      NewsEvent.getPosts(
        GetPostsRequest(
          resolution: 1080,
          limit: 5,
          offset: pageNum,
          orderAsc: false,
          feedType: 'school_feed',
          schoolId: schoolId,
          role: context.read<RoleNotifier>().currentRole,
          childId: context.read<RoleNotifier>().currentRoleId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return p.Consumer<RoleNotifier>(
      builder: (context, roleNotifier, _) {
        if (_currentRoleId != roleNotifier.currentRoleId) {
          _currentRoleId = roleNotifier.currentRoleId;
          _loadInitialPosts();
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
                          return _buildBottomLoader();
                        } else {
                          return _buildPostItem(_posts[index], index);
                        }
                      },
                      itemCount: viewModel.hasReachedMax ? _posts.length : _posts.length + 1,
                      controller: _scrollController,
                    ),
                  ),
                );
              },
              error: (message) {
                return Center(child: Text('Error: $message'));
              },
            );
          },
        );
      },
    );
  }

  Widget _buildPostItem(PostEntity post, int index) {
    return const SizedBox();

    // NewsCard(
    //   images: post.attachments!,
    //   title: post.title,
    //   subtext: post.content,
    //   index: index,
    //   date: DateFormat('dd.MM.yyyy').format(DateTime.parse(post.createdDate)),
    //   onButtonPressed: () {},
    // );
  }

  Widget _buildBottomLoader() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Center(child: SizedBox(height: 24, width: 24, child: CircularProgressIndicator(strokeWidth: 1.5))),
    );
  }

  void _onScroll() {
    if (_isBottom && !_isLoading) {
      _isLoading = true;
      pageNum++;
      _newsBloc.add(
        NewsEvent.getPosts(
          GetPostsRequest(
            limit: 5,
            offset: pageNum * 5,
            resolution: 1080,
            orderAsc: false,
            feedType: 'school_feed',
            schoolId: schoolId,
            role: context.read<RoleNotifier>().currentRole,
            childId: context.read<RoleNotifier>().currentRoleId,
          ),
        ),
      );
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
