import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/login/data/models/signup_request.dart';
import 'package:oyan/src/features/login/data/models/signup_response.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';
import '../repositories/auth_repository_impl.dart';

@lazySingleton
class RegisterUseCase extends UseCase<SignupResponse, SignupRequest> {
  final IAuthRepository _authRepository;

  RegisterUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, SignupResponse>> execute(SignupRequest requestModel) async =>
      _authRepository.signupUser(requestModel);
}
