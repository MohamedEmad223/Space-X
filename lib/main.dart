import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'core/routes/app_routes.dart';
import 'space_xplore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  // To fix texts being hidden bug in flutter_screenutil in release mode.
  ScreenUtil.ensureScreenSize();
  runApp(SpaceXplore(
    appRoutes: AppRoutes(),
  ));
}
