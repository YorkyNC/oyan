import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/profile/domain/entities/update_profile_entity.dart';
import 'package:oyan/src/features/profile/domain/requests/update_profile_requset.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/profile_repository_impl.dart';
import '../repositories/i_profile_repository.dart';

@lazySingleton
class UpdateProfileUseCase extends UseCase<UpdateProfileEntity, UpdateProfileRequest> {
  final IProfileRepository _repository;

  UpdateProfileUseCase(@Named.from(ProfileRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, UpdateProfileEntity>> execute(UpdateProfileRequest requestModel) {
    return _repository.updateProfile(requestModel);
  }
}
