import 'package:dio/dio.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:either_dart/either.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../model/rocket_model.dart';

class RocketsRepo {
  final ApiServices apiService;

  RocketsRepo(this.apiService);

  Future<Either<ApiErrorHandler, List<RocketModel>>> getAllRockets() async {
    try {
      final rocketsList = await apiService.fetchAllRockets();
      return Right(rocketsList);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioException(error));
      } else {
        return Left(ServerFailure(errorMessage: error.toString()));
      }
    }
  }
}
