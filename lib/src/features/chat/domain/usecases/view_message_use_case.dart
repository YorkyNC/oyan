import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/chat/domain/requests/view_message_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/chat_repository_impl.dart';
import '../repositories/i_chat_repository.dart';

@lazySingleton
class ViewMessageUseCase extends UseCase<String, ViewMessageRequest> {
  final IChatRepository _repository;

  ViewMessageUseCase(@Named.from(ChatRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, String>> execute(ViewMessageRequest requestModel) {
    return _repository.viewMessage(requestModel);
  }
}
