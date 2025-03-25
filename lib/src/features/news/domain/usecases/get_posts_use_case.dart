import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../entities/post_entity.dart';
import '../repositories/i_news_repository.dart';
import '../requests/get_posts_request.dart';

@lazySingleton
class GetPostsUseCase extends UseCase<List<PostEntity>, GetPostsRequest> {
  final INewsRepository _repository;

  GetPostsUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<PostEntity>>> execute(
      GetPostsRequest requestModel) {
    return _repository.getPosts(requestModel);
  }
}
