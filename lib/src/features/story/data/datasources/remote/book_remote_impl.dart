import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/story/domain/entities/get_daily_excerpts.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import 'i_story_remote.dart';

@named
@LazySingleton(as: IStoryRemote)
class StoryRemoteImpl implements IStoryRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  StoryRemoteImpl(this.client);
  @override
  Future<Either<DomainException, GetDailyExcerpts>> getDailyExcerpts(GetDailyExcerptsRequest file) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/dailyexcerpts/',
        options: ApiHeaders.dioOptions,
      );

      return response.fold((error) => Left(error), (result) {
        log('API Response: ${result.data}');
        final dailyExcerpts = GetDailyExcerpts.fromJson(result.data);
        log('Parsed Daily Excerpts: ${dailyExcerpts.dailyExcerpts?.firstOrNull?.generatedImageUrl}');
        return Right(dailyExcerpts);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetBooksEntity>> getDailyHits(GetDailyHitsRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/dailyhits/',
        options: ApiHeaders.dioOptions,
      );

      return response.fold((error) => Left(error), (result) {
        log('API Response: ${result.data}');
        final dailyHits = GetBooksEntity.fromJson(result.data);
        return Right(dailyHits);
      });
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
