import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/competition_repository_impl.dart';
import '../repositories/i_competition_repository.dart';

@lazySingleton
class GetDailyTasksUseCase extends UseCase<GetDailyTasks, GetDailyTasksRequest> {
  final ICompetitionRepository _repository;

  GetDailyTasksUseCase(@Named.from(CompetitionRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetDailyTasks>> execute(GetDailyTasksRequest requestModel) {
    return _repository.getDailyTasks(requestModel);
  }
}
