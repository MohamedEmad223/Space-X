import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:space_xplore/feature/ships/data/repo/ships_repo.dart';
import 'package:space_xplore/feature/ships/logic/cubit/ships_cubit.dart';
import '../../feature/company_info/data/repo/company_info_repo.dart';
import '../../feature/company_info/logic/cubit/company_info_cubit.dart';
import '../../feature/crew/data/repo/crew_repo.dart';
import '../../feature/crew/logic/cubit/crew_cubit.dart';
import '../../feature/launches/data/repo/launch_repo.dart';
import '../../feature/launches/logic/cubit/launch_cubit.dart';
import '../../feature/rockets/data/repo/rockets_repo.dart';
import '../networking/api_services.dart';
import 'package:space_xplore/feature/rockets/logic/cubit/rockets_cubit.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

void setupDependencyInjection() {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  // rockets
  getIt.registerLazySingleton<RocketsRepo>(() => RocketsRepo(getIt()));
  getIt.registerLazySingleton<RocketsCubit>(() => RocketsCubit(getIt()));

  // crew
  getIt.registerLazySingleton<CrewRepo>(() => CrewRepo(getIt()));
  getIt.registerLazySingleton<CrewCubit>(() => CrewCubit(getIt()));

  // ships
  getIt.registerLazySingleton<ShipsRepo>(() => ShipsRepo(getIt()));
  getIt.registerLazySingleton<ShipsCubit>(() => ShipsCubit(getIt()));

  // launches
  getIt.registerLazySingleton<LaunchRepo>(() => LaunchRepo(getIt()));
  getIt.registerLazySingleton<LaunchCubit>(() => LaunchCubit(getIt()));

  // company info
  getIt.registerLazySingleton<CompanyInfoRepo>(() => CompanyInfoRepo(getIt()));
  getIt
      .registerLazySingleton<CompanyInfoCubit>(() => CompanyInfoCubit(getIt()));
}
