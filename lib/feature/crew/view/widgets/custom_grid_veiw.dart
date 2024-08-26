import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/widgets/custom_grid_view.dart';
import '../screens/crew_details_screen.dart';

class CustomGridVeiw extends StatelessWidget {
  const CustomGridVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                    screen: const CrewDetailsScreen(
                      imageUrl:
                          'https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no',
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: CustomGridContainer(
                    title: 'title',
                    imageUrl:
                        'https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no',
                  ),
                ),
              );
            }));
  }
}
