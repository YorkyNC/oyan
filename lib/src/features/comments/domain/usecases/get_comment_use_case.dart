import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../data/repositories/comment_repository_impl.dart';
import '../entities/get_commets_response.dart';
import '../repositories/i_comment_repository.dart';
import '../requests/get_comments_request.dart';

@lazySingleton
class GetCommentUseCase extends UseCase<GetCommentsResponse, GetCommentsRequest> {
  final ICommentRepository _repository;

  GetCommentUseCase(@Named.from(CommentRepositoryImpl) this._repository);

  @override
  Future<Either<DomainException, GetCommentsResponse>> execute(GetCommentsRequest requestModel) {
    return _repository.getComments(requestModel);
  }
}
