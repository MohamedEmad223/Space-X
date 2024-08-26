import 'package:flutter/material.dart';
import 'routes.dart';

import '../widgets/bottom_navigation_bar.dart';



class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.navBar:
        return MaterialPageRoute(builder: (context) => const BottomNavBar());
    }
    return null;
  }
}
