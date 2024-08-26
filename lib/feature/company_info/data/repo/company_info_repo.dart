import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:space_xplore/core/networking/api_error_handler.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:space_xplore/feature/company_info/data/model/company_info_model.dart';
class CompanyInfoRepo {
  final ApiServices _apiServices;

  CompanyInfoRepo(this._apiServices);

  Future<Either<ApiErrorHandler, CompanyInfoModel>> fetchCompanyInfo() async {
    try {
      final response = await _apiServices.fetchCompanyInfo();
      return Right(response);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}

