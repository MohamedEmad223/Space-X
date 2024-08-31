import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/all_launch.dart';

class LaunchsScreen extends StatelessWidget {
  const LaunchsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: BackgroundContainer(
            child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Constants.launchesModelName,
                    style: TextStyles.font18WhiteMediumOrienta),
                SizedBox(
                  height: 20.h,
                ),
                const AllLaunchesBody()
              ],
            ),
          ),
        )));
  }
}
