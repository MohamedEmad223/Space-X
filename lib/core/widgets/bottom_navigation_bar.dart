import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../../feature/company_info/view/screens/company_info.dart';
import '../../feature/crew/view/screens/crew_screen.dart';
import '../../feature/launches/view/screens/launchs_screen.dart';
import '../../feature/rockets/view/screens/rockets_screen.dart';
import '../../feature/ships/view/screens/ships_screen.dart';
import '../helpers/text_helper.dart';
import '../theming/colors_manger.dart';
import '../theming/text_style.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: PersistentTabController(initialIndex: 0),
      screens: _buildScreens(),
      items: _buildNavBarsItems(),
      backgroundColor: ColorsManager.semiBlackColor,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const RocketsScreen(),
    const LaunchsScreen(),
    const CrewScreen(),
    const ShipsScreen(),
    const CompanyInfoScreen(),
  ];
}

List<PersistentBottomNavBarItem> _buildNavBarsItems() {
  return [
    _buildNavBarItem(Icons.rocket_sharp, Constants.bottomNavBarItemText1),
    _buildNavBarItem(
        Icons.rocket_launch_sharp, Constants.bottomNavBarItemText2),
    _buildNavBarItem(Icons.people_sharp, Constants.bottomNavBarItemText3),
    _buildNavBarItem(
        Icons.directions_boat_filled_sharp, Constants.bottomNavBarItemText4),
    _buildNavBarItem(Icons.info_outline, Constants.bottomNavBarItemText5),
  ];
}

PersistentBottomNavBarItem _buildNavBarItem(IconData icon, String label) {
  return PersistentBottomNavBarItem(
    icon: Icon(icon),
    inactiveColorPrimary: ColorsManager.whiteColor,
    title: label,
    iconSize: 15.w,
    textStyle: TextStyles.font10WhiteBoldOrienta,
  );
}
