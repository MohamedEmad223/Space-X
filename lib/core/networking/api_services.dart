import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../feature/crew/data/model/query_crew_model.dart';
import '../../feature/rockets/data/model/rocket_model.dart';
import 'api_constants.dart';
import 'package:space_xplore/feature/company_info/data/model/company_info_model.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  //-------------------Rockets-------------------
  @GET(ApiConstants.rockets)
  Future<List<RocketModel>> fetchAllRockets();

  //-------------------Company Info-------------------
  @GET(ApiConstants.companyInfo)
  Future<CompanyInfoModel> fetchCompanyInfo();

  //-------------------Crew-------------------
  @POST(ApiConstants.queryCrew)
  Future<QueryCrewModel> fetchAllCrewMembers(@Body() body);
}

abstract class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, dynamic options);
}
