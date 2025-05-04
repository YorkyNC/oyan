import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/test_add_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/test_add_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/competition_repository_impl.dart';
import '../repositories/i_competition_repository.dart';

@lazySingleton
class TestAddUseCase extends UseCase<TestAddEntity, TestAddRequest> {
  final ICompetitionRepository _repository;

  TestAddUseCase(@Named.from(CompetitionRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, TestAddEntity>> execute(TestAddRequest requestModel) {
    return _repository.testAdd(requestModel);
  }
}
