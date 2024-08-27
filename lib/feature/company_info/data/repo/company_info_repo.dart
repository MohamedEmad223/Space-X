import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:space_xplore/core/networking/api_error_handler.dart';
import 'package:space_xplore/core/networking/api_services.dart';
import 'package:space_xplore/feature/company_info/data/model/company_info_model.dart';

class CompanyInfoRepo {
  final ApiServices _apiServices;

  CompanyInfoRepo(this._apiServices);

  Future<Either<ApiErrorHandler, CompanyInfoModel>> fetchCompanyInfo(
      String path) async {
    try {
      final response = await _apiServices.fetchCompanyInfo();
      log('repo success=> $response');
      return Right(response);
    } on DioException catch (error) {
      log('repo error=> $error');
      return Left(ServerFailure.fromDioException(error));
    }
  }
}
