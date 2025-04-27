import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';

import '../../../../core/exceptions/domain_exception.dart';

abstract class ICompetitionRepository {
  Future<Either<DomainException, GetCompetitionEntity>> getCompetition(
    GetCompetitionRequest request,
  );
}
