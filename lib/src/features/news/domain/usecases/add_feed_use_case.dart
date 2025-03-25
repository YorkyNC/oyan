import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../repositories/i_news_repository.dart';
import '../requests/add_feed_request.dart';

@lazySingleton
class AddFeedUseCase extends UseCase<String, AddFeedRequest> {
  final INewsRepository _repository;

  AddFeedUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, String>> execute(AddFeedRequest requestModel) {
    return _repository.addFeed(requestModel);
  }
}
