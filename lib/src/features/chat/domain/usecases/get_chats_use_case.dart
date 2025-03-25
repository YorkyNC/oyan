import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/chat_entity.dart';
import '../../data/repositories/chat_repository_impl.dart';
import '../repositories/i_chat_repository.dart';
import '../requests/get_chats_request.dart';

@lazySingleton
class GetChatsUseCase extends UseCase<List<ChatEntity>, GetChatsRequest> {
  final IChatRepository _repository;

  GetChatsUseCase(@Named.from(ChatRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, List<ChatEntity>>> execute(GetChatsRequest requestModel) {
    return _repository.getChats(requestModel);
  }
}
