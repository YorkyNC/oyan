import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/login/data/models/csrf_token_response.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/i_auth_repository.dart';
import '../repositories/auth_repository_impl.dart';

@lazySingleton
class CsrfTokenUseCase extends NoneInputBoundaryUseCase<CsrfTokenResponse> {
  final IAuthRepository _authRepository;

  CsrfTokenUseCase(@Named.from(AuthRepositoryImpl) this._authRepository);

  @override
  Future<Either<DomainException, CsrfTokenResponse>> execute() async => _authRepository.csrfToken();
}
