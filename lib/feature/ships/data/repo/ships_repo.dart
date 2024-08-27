import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:space_xplore/core/networking/api_error_handler.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:space_xplore/feature/ships/data/model/query_ships_model.dart';

class ShipsRepo {
  final ApiServices _apiServices;
  ShipsRepo(this._apiServices);

  Future<Either<ApiErrorHandler, QueryShipsModel>> fetchAllShips(String path,
      {required int page}) async {
    try {
      final ships = await _apiServices.fetchAllShips({
        'options': {
          'page': page,
          'limit': 10,
        }
      });

      log('repo success=> $ships');
      return Right(ships);
    } catch (e) {
      log('repo error=> $e');
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
