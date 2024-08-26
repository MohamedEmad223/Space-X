import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/custom_grid_view.dart';
import 'crew_details_screen.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Constants.crewModelName,
              style: TextStyles.font18WhiteMediumOrienta,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 100.w / 120.h,
                      crossAxisSpacing: 40.w,
                      mainAxisSpacing: 35.h,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            withNavBar: false,
                            pageTransitionAnimation:
                                PageTransitionAnimation.sizeUp,
                            screen: const CrewDetailsScreen(
                              imageUrl:
                                  'https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no',
                            ),
                          );
                        },
                        child: const CustomGridContainer(
                          title: 'title',
                          imageUrl:
                              'https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no',
                        ),
                      );
                    })),
          ],
        ),
      ))),
    );
  }
}
