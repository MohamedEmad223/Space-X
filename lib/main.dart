import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'core/routes/app_routes.dart';
import 'space_xplore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  runApp(SpaceXplore(
    appRoutes: AppRoutes(),
  ));
}
