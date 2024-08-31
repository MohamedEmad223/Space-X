import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';
import 'package:space_xplore/feature/launches/data/models/query_launches.dart';
import 'package:space_xplore/feature/ships/data/model/query_ships_model.dart';
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

  //-------------------Ships------------------
  @POST(ApiConstants.queryShips)
  Future<QueryShipsModel> fetchAllShips(@Body() body);

  //-------------------Launches-------------------
  @POST(ApiConstants.queryLaunches)
  Future<QueryLaunches> fetchAllLaunches(@Body() body);

  @GET("${ApiConstants.launches}/{id}")
  Future<LaunchModel> fetchLaunchById({@Path("id") required String id});
}

abstract class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, dynamic options);
}
