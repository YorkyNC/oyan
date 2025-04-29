import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import 'i_competition_remote.dart';

@named
@LazySingleton(as: ICompetitionRemote)
class CompetitionRemoteImpl implements ICompetitionRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  CompetitionRemoteImpl(this.client);
  @override
  Future<Either<DomainException, GetCompetitionEntity>> getCompetition(GetCompetitionRequest file) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/competition/tournaments/',
        options: ApiHeaders.dioOptions,
        queryParameters: {'status': file.status},
      );

      return response.fold((error) => Left(error), (result) {
        return Right(GetCompetitionEntity.fromJson(result.data));
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetDailyTasks>> getDailyTasks(GetDailyTasksRequest request) async {
    final Map<String, dynamic> queryParams = {};
    if (request.page != null) {
      queryParams['page'] = request.page;
    }
    if (request.size != null) {
      queryParams['size'] = request.size;
    }
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/competition/tournaments/dailytasks/',
        options: ApiHeaders.dioOptions,
        queryParameters: queryParams,
      );

      return response.fold((error) => Left(error), (result) {
        return Right(GetDailyTasks.fromJson(result.data));
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetResult>> getResult(GetResultRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/competition/tournaments/${request.tournamentId}/results/',
        options: ApiHeaders.dioOptions,
      );

      return response.fold((error) => Left(error), (result) {
        return Right(GetResult.fromJson(result.data));
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
