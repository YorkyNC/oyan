import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';

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
}
