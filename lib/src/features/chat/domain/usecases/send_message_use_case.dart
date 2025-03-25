import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/chat/domain/requests/send_message_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/chat_entity.dart';
import '../../data/repositories/chat_repository_impl.dart';
import '../repositories/i_chat_repository.dart';

@lazySingleton
class SendMessageUseCase extends UseCase<SentMessageEntity, SendMessageRequest> {
  final IChatRepository _repository;

  SendMessageUseCase(@Named.from(ChatRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, SentMessageEntity>> execute(SendMessageRequest requestModel) {
    return _repository.sendMessage(requestModel);
  }
}
