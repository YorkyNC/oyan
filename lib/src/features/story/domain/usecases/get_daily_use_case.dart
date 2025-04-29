import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/story/domain/entities/get_daily_excerpts.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/story_repository_impl.dart';
import '../repositories/i_story_repository.dart';

@lazySingleton
class GetDailyUseCase extends UseCase<GetDailyExcerpts, GetDailyExcerptsRequest> {
  final IStoryRepository _repository;

  GetDailyUseCase(@Named.from(StoryRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetDailyExcerpts>> execute(GetDailyExcerptsRequest requestModel) {
    return _repository.getDailyExcerpts(requestModel);
  }
}
