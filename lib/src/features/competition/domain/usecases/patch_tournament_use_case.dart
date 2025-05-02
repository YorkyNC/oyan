import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/patch_tournament_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/competition_repository_impl.dart';
import '../repositories/i_competition_repository.dart';

@lazySingleton
class PatchTournamentUseCase extends UseCase<PatchTournamentEntity, PatchTournamentRequest> {
  final ICompetitionRepository _repository;

  PatchTournamentUseCase(@Named.from(CompetitionRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, PatchTournamentEntity>> execute(PatchTournamentRequest requestModel) {
    return _repository.patchTournament(requestModel);
  }
}
