import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/patch_tournament_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/repositories/i_competition_repository.dart';
import '../datasources/remote/competition_remote_impl.dart';
import '../datasources/remote/i_competition_remote.dart';

@named
@LazySingleton(as: ICompetitionRepository)
class CompetitionRepositoryImpl implements ICompetitionRepository {
  final ICompetitionRemote competitionImpl;
  CompetitionRepositoryImpl(@Named.from(CompetitionRemoteImpl) this.competitionImpl);

  @override
  Future<Either<DomainException, GetCompetitionEntity>> getCompetition(GetCompetitionRequest file) async {
    try {
      final requests = await competitionImpl.getCompetition(file);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetDailyTasks>> getDailyTasks(GetDailyTasksRequest request) async {
    try {
      final requests = await competitionImpl.getDailyTasks(request);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetResult>> getResult(GetResultRequest request) async {
    try {
      final requests = await competitionImpl.getResult(request);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetCompetitionEntity>> getDetail(GetResultRequest request) async {
    try {
      final requests = await competitionImpl.getDetail(request);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, PatchTournamentEntity>> patchTournament(PatchTournamentRequest request) async {
    try {
      final requests = await competitionImpl.patchTournament(request);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
