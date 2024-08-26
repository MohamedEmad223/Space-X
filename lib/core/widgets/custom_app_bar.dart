import 'package:flutter/material.dart';
import '../helpers/text_helper.dart';

import '../theming/colors_manger.dart';
import '../theming/text_style.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      iconTheme: const IconThemeData(color: ColorsManager.whiteColor),
      title: Text(
        Constants.appName,
        style: TextStyles.font24WhiteBoldOrbitron,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }
}