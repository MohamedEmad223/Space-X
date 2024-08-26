import 'package:either_dart/either.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:space_xplore/feature/crew/data/model/query_crew_model.dart';

import '../../../../core/networking/api_error_handler.dart';

class CrewRepo {
  final ApiServices _apiServices;

  CrewRepo(this._apiServices);

  Future<Either<ApiErrorHandler, QueryCrewModel>> fetchAllCrewMembers(
      {required int page}) async {
    try {
      final crewMembers = await _apiServices.fetchAllCrewMembers({
        'options': {
          'page': page,
          'limit': 10,
        }
      });
      return Right(crewMembers);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
