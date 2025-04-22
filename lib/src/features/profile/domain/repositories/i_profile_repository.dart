import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/profile/domain/entities/profile_entity.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../requests/get_profile_request.dart';

abstract class IProfileRepository {
  Future<Either<DomainException, ProfileData>> getProfile(
    GetProfileRequest request,
  );
}
