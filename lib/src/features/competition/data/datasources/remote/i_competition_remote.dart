import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/patch_tournament_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_competition_request.dart';

abstract class ICompetitionRemote {
  Future<Either<DomainException, GetCompetitionEntity>> getCompetition(
    GetCompetitionRequest file,
  );

  Future<Either<DomainException, GetDailyTasks>> getDailyTasks(
    GetDailyTasksRequest request,
  );

  Future<Either<DomainException, GetResult>> getResult(
    GetResultRequest request,
  );
  Future<Either<DomainException, GetCompetitionEntity>> getDetail(
    GetResultRequest request,
  );

  Future<Either<DomainException, PatchTournamentEntity>> patchTournament(
    PatchTournamentRequest request,
  );
}
