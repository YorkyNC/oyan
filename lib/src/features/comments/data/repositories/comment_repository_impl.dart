import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/entities/add_comments_response.dart';
import '../../domain/entities/get_commets_response.dart';
import '../../domain/repositories/i_comment_repository.dart';
import '../../domain/requests/add_commment_requst.dart';
import '../../domain/requests/get_comments_request.dart';
import '../datasources/remote/comment_remote_impl.dart';
import '../datasources/remote/i_comment_remote.dart';

@named
@LazySingleton(as: ICommentRepository)
class CommentRepositoryImpl implements ICommentRepository {
  final ICommentRemote commentImpl;
  CommentRepositoryImpl(@Named.from(CommentRemoteImpl) this.commentImpl);

  @override
  Future<Either<DomainException, GetCommentsResponse>> getComments(GetCommentsRequest file) async {
    try {
      final requests = await commentImpl.getComments(file);

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

  @override
  Future<Either<DomainException, AddCommentResponse>> addComment(AddCommentRequest request) async {
    try {
      final requests = await commentImpl.addComment(request);

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
