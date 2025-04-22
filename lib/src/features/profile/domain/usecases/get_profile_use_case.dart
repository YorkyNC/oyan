import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/profile_repository_impl.dart';
import '../entities/profile_entity.dart';
import '../repositories/i_profile_repository.dart';
import '../requests/get_profile_request.dart';

@lazySingleton
class GetProfileUseCase extends UseCase<ProfileData, GetProfileRequest> {
  final IProfileRepository _repository;

  GetProfileUseCase(@Named.from(ProfileRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, ProfileData>> execute(GetProfileRequest requestModel) {
    return _repository.getProfile(requestModel);
  }
}
