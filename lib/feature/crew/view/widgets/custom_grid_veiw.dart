import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/feature/crew/data/model/crew_model.dart';

import '../../../../core/widgets/custom_grid_view.dart';
import '../screens/crew_details_screen.dart';

class CustomGridVeiw extends StatelessWidget {
  const CustomGridVeiw({super.key, required this.crewList});

  final List<CrewModel> crewList;

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
              final crew = crewList[index];
              return GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                    screen: CrewDetailsScreen(
                      imageUrl: crew.image,
                      crewModel: crew,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: CustomGridContainer(
                    title: crew.name,
                    imageUrl: crew.image,
                  ),
                ),
              );
            }));
  }
}
