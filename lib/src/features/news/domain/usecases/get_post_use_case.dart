import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../entities/post_entity.dart';
import '../repositories/i_news_repository.dart';
import '../requests/get_post_request.dart';

@lazySingleton
class GetPostUseCase extends UseCase<PostEntity, GetPostRequest> {
  final INewsRepository _repository;

  GetPostUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, PostEntity>> execute(
      GetPostRequest requestModel) {
    return _repository.getPost(requestModel);
  }
}
