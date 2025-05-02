import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/competition_repository_impl.dart';
import '../repositories/i_competition_repository.dart';

@lazySingleton
class GetDetailUseCase extends UseCase<GetCompetitionEntity, GetResultRequest> {
  final ICompetitionRepository _repository;

  GetDetailUseCase(@Named.from(CompetitionRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetCompetitionEntity>> execute(GetResultRequest requestModel) {
    return _repository.getDetail(requestModel);
  }
}
