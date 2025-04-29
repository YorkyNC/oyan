import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/story_repository_impl.dart';
import '../repositories/i_story_repository.dart';

@lazySingleton
class GetDailyHitsUseCase extends UseCase<GetBooksEntity, GetDailyHitsRequest> {
  final IStoryRepository _repository;

  GetDailyHitsUseCase(@Named.from(StoryRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetBooksEntity>> execute(GetDailyHitsRequest requestModel) {
    return _repository.getDailyHits(requestModel);
  }
}
