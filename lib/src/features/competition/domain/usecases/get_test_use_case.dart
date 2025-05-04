import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_test_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/test_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/competition_repository_impl.dart';
import '../repositories/i_competition_repository.dart';

@lazySingleton
class GetTestUseCase extends UseCase<GetTestEntity, TestRequest> {
  final ICompetitionRepository _repository;

  GetTestUseCase(@Named.from(CompetitionRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetTestEntity>> execute(TestRequest requestModel) {
    return _repository.getTest(requestModel);
  }
}
