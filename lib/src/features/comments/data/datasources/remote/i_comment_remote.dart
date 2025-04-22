import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/comments/domain/entities/add_comments_response.dart';
import 'package:oyan/src/features/comments/domain/entities/get_commets_response.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';

import '../../../../../core/exceptions/domain_exception.dart';

import '../../../domain/requests/get_comments_request.dart';

abstract class ICommentRemote {
  Future<Either<DomainException, GetCommentsResponse>> getComments(
    GetCommentsRequest file,
  );
  Future<Either<DomainException, AddCommentResponse>> addComment(
    AddCommentRequest request,
  );
}
