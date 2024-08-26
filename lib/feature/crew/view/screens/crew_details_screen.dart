import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';

import '../../../../core/theming/colors_manger.dart';

class CrewDetailsScreen extends StatelessWidget {
  const CrewDetailsScreen({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: BackgroundContainer(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 440.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorsManager.lightTransparentColor),
                    child: Column(children: [
                      SizedBox(
                        height: 20.h,
                      ),
                    ]))
              ],
            ),
          ),
        ));
  }
}
