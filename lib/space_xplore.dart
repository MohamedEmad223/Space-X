import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/app_routes.dart';
import 'core/routes/routes.dart';

class SpaceXplore extends StatelessWidget {
  const SpaceXplore({super.key, required this.appRoutes});

  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Doc App',
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.navBar,
          onGenerateRoute: AppRoutes().onGenerateRoute,
        ));
  }
}
