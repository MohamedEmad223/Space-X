import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_xplore/core/di/dependency_injection.dart';
import 'package:space_xplore/feature/crew/logic/cubit/crew_cubit.dart';
import 'package:space_xplore/feature/rockets/logic/cubit/rockets_cubit.dart';
import 'package:space_xplore/feature/ships/logic/cubit/ships_cubit.dart';
import '../../feature/company_info/logic/cubit/company_info_cubit.dart';
import '../../feature/rockets/data/repo/rockets_repo.dart';
import 'routes.dart';

import '../widgets/bottom_navigation_bar.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.navBar:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(providers: [
                  BlocProvider<RocketsCubit>(
                    create: (context) => RocketsCubit(
                      getIt<RocketsRepo>(),
                    )..fetchAllRockets(Routes.rocket),
                  ),
                  BlocProvider(
                      create: (context) => getIt<CompanyInfoCubit>()
                        ..fetchCompanyInfo(Routes.companyInfo)),
                  BlocProvider(
                      create: (context) =>
                          getIt<CrewCubit>()..fetchAllCrew(Routes.crew)),
                  BlocProvider(
                      create: (context) =>
                          getIt<ShipsCubit>()..fetchAllShipsData(Routes.ships)),
                ], child: const BottomNavBar()));
    }
    return null;
  }
}
