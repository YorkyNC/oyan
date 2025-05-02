import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/csrf/csrf_service.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/patch_tournament_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';

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
      String statusString;
      switch (file.status) {
        case CompetitionStatus.done:
          statusString = 'done';
          break;
        case CompetitionStatus.start:
          statusString = 'start';
          break;
        case CompetitionStatus.participate:
          statusString = 'participate';
          break;
      }
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/competition/tournaments/',
        options: ApiHeaders.dioOptions,
        queryParameters: {'status': statusString},
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

  @override
  Future<Either<DomainException, GetCompetitionEntity>> getDetail(GetResultRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/competition/tournaments/${request.tournamentId}/',
        options: ApiHeaders.dioOptions,
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
  Future<Either<DomainException, PatchTournamentEntity>> patchTournament(PatchTournamentRequest file) async {
    try {
      Log.d('Starting patch tournament request for tournament ID: ${file.tournamentId}');
      Log.d('Requested status: ${file.status}');

      final csrfService = CsrfService(client);
      final csrfResult = await csrfService.fetchCsrfToken();
      if (csrfResult.isLeft()) {
        Log.e('Failed to fetch CSRF token: ${csrfResult.getLeft().getOrElse(() => UnknownException())}');
        return Left(csrfResult.getLeft().getOrElse(() => UnknownException()));
      }

      final csrfToken = st.getCsrfToken();
      final csrfCookie = st.getCsrfCookie();
      final sessionId = st.getSessionId();

      if (csrfToken == null || csrfCookie == null || sessionId == null) {
        Log.e('Missing authentication data: csrfToken=$csrfToken, csrfCookie=$csrfCookie, sessionId=$sessionId');
        return Left(UnknownException(message: 'CSRF token, cookie or session ID not found'));
      }

      final csrfCookieValue = csrfToken;
      final sessionIdValue = sessionId.split('=').last.split(';').first;

      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-CSRFToken': csrfToken,
        'Cookie': 'csrftoken=$csrfCookieValue; sessionid=$sessionIdValue',
      };

      Log.d('Request headers: $headers');

      String statusString;
      switch (file.status) {
        case CompetitionStatus.done:
          statusString = 'done';
          break;
        case CompetitionStatus.start:
          statusString = 'start';
          break;
        case CompetitionStatus.participate:
          statusString = 'participate';
          break;
      }

      Log.d('Sending request with status: $statusString');

      final Either<DomainException, Response<dynamic>> response = await client.post(
        '${EndPoints.baseUrl}/competition/tournaments/${file.tournamentId}/',
        data: {'status': statusString},
        options: Options(headers: headers),
      );

      return response.fold(
        (error) {
          Log.e('Error in patch tournament request: $error');
          return Left(error);
        },
        (result) async {
          Log.d('Patch tournament response status code: ${result.statusCode}');
          Log.d('Patch tournament response data: ${result.data}');

          if (result.statusCode == 200 || result.statusCode == 201) {
            try {
              final entity = PatchTournamentEntity.fromJson(result.data);
              Log.d('Successfully parsed response to PatchTournamentEntity');
              return Right(entity);
            } catch (e) {
              Log.e('Failed to parse response: $e');
              return Left(UnknownException(message: 'Failed to parse response: $e'));
            }
          } else {
            Log.e('Unexpected status code: ${result.statusCode}, message: ${result.statusMessage}');
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      Log.e('Exception in patch tournament: $e');
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }
}
