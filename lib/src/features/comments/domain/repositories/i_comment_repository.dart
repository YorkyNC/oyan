import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/comments/domain/entities/add_comments_response.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';
import 'package:oyan/src/features/comments/domain/requests/get_comments_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../entities/get_commets_response.dart';

abstract class ICommentRepository {
  Future<Either<DomainException, GetCommentsResponse>> getComments(
    GetCommentsRequest request,
  );
  Future<Either<DomainException, AddCommentResponse>> addComment(
    AddCommentRequest request,
  );
}
