import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/news/domain/entities/feed_entity.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../repositories/i_news_repository.dart';
import '../requests/get_feed_request.dart';

@lazySingleton
class GetFeedUseCase extends UseCase<FeedEntity, GetFeedRequest> {
  final INewsRepository _repository;

  GetFeedUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, FeedEntity>> execute(GetFeedRequest requestModel) {
    return _repository.getFeed(requestModel);
  }
}
