import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/profile/domain/entities/profile_entity.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_profile_request.dart';

abstract class IProfileRemote {
  Future<Either<DomainException, ProfileData>> getProfile(
    GetProfileRequest file,
  );
}
