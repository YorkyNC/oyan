import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/profile/domain/entities/profile_entity.dart';
import 'package:oyan/src/features/profile/domain/entities/update_profile_entity.dart';
import 'package:oyan/src/features/profile/domain/requests/update_profile_requset.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_profile_request.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, ProfileData>> getProfile(
    GetProfileRequest file,
  );
  Future<Either<DomainException, UpdateProfileEntity>> updateProfile(
    UpdateProfileRequest request,
  );
}
