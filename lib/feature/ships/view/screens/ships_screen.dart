import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/text_style.dart';
import '../widgets/all_ships.dart';

class ShipsScreen extends StatelessWidget {
  const ShipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const CustomAppBar(),
        body: BackgroundContainer(
            child: SafeArea(
                child: SafeArea(
                    child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Constants.shipsModelName,
                  style: TextStyles.font18WhiteMediumOrienta),
              verticalSpace(20.h),
              const AllShips()
            ],
          ),
        )))));
  }
}
