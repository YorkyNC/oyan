import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/comments/domain/entities/add_comments_response.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/comment_repository_impl.dart';
import '../repositories/i_comment_repository.dart';

@lazySingleton
class AddCommentUseCase extends UseCase<AddCommentResponse, AddCommentRequest> {
  final ICommentRepository _repository;

  AddCommentUseCase(@Named.from(CommentRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, AddCommentResponse>> execute(AddCommentRequest requestModel) {
    return _repository.addComment(requestModel);
  }
}
