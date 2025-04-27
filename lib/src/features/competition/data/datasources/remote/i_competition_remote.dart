import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_competition_request.dart';

abstract class ICompetitionRemote {
  Future<Either<DomainException, GetCompetitionEntity>> getCompetition(
    GetCompetitionRequest file,
  );
}
