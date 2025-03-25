import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/chat_entity.dart';
import '../../data/repositories/chat_repository_impl.dart';
import '../repositories/i_chat_repository.dart';
import '../requests/get_message_request.dart';

@lazySingleton
class GetMessageUseCase extends UseCase<MessageEntity, GetMessageRequest> {
  final IChatRepository _repository;

  GetMessageUseCase(@Named.from(ChatRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, MessageEntity>> execute(GetMessageRequest requestModel) {
    return _repository.getMessage(requestModel);
  }
}
