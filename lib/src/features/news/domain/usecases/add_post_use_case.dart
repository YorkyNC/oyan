import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../repositories/i_news_repository.dart';
import '../requests/add_post_request.dart';

@lazySingleton
class AddPostUseCase extends UseCase<String, AddPostRequest> {
  final INewsRepository _repository;

  AddPostUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, String>> execute(AddPostRequest requestModel) {
    return _repository.addPost(requestModel);
  }
}
