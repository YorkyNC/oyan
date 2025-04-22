import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/profile_entity.dart';
import '../../domain/repositories/i_profile_repository.dart';
import '../../domain/requests/get_profile_request.dart';
import '../datasources/remote/i_profile_remote.dart';
import '../datasources/remote/profile_remote_impl.dart';

@named
@LazySingleton(as: IProfileRepository)
class ProfileRepositoryImpl implements IProfileRepository {
  final IProfileRemote profileImpl;
  ProfileRepositoryImpl(@Named.from(ProfileRemoteImpl) this.profileImpl);

  @override
  Future<Either<DomainException, ProfileData>> getProfile(GetProfileRequest file) async {
    try {
      final requests = await profileImpl.getProfile(file);

      return requests.fold(
        (error) => Left(error),
        (result) {
          return Right(result);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
