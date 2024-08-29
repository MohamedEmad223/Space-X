import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:space_xplore/core/networking/api_error_handler.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:space_xplore/feature/launches/data/models/query_launches.dart';

import '../models/launch_model.dart';

class LaunchRepo {
  final ApiServices _apiServices;

  LaunchRepo(this._apiServices);

  Future<Either<ApiErrorHandler, QueryLaunches>> getAllLaunches(
      {required int page}) async {
    try {
      final launchesList = await _apiServices.fetchAllLaunches({
        'options': {
          "page": page,
          "limit": 10,
        }
      });
      log('repo success=> $launchesList');
      return Right(launchesList);
    } catch (e) {
      log('repo error=> $e');
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  Future<Either<ApiErrorHandler, LaunchModel>> getLaunchById(
      String path, String id) async {
    try {
      final response = await _apiServices.fetchLaunchById(id: id);
      log('repo success=> $response');
      return Right(response);
    } on ApiErrorHandler catch (e) {
      log('repo error=> $e');
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
