import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/news/domain/entities/feed_entity.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/news_repository_impl.dart';
import '../repositories/i_news_repository.dart';
import '../requests/get_feeds_request.dart';

@lazySingleton
class GetFeedsUseCase extends UseCase<List<FeedEntity>, GetFeedsRequest> {
  final INewsRepository _repository;

  GetFeedsUseCase(@Named.from(NewsRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<FeedEntity>>> execute(GetFeedsRequest requestModel) {
    return _repository.getFeeds(requestModel);
  }
}
