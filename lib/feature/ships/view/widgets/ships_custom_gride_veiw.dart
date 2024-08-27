import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/feature/ships/view/screens/details_ships_screen.dart';
import 'package:space_xplore/feature/ships/view/widgets/ships_custom_container.dart';

class ShipsCustomGrideVeiw extends StatefulWidget {
  const ShipsCustomGrideVeiw({
    super.key,
  });

  @override
  State<ShipsCustomGrideVeiw> createState() => _CustomGridVeiwState();
}

class _CustomGridVeiwState extends State<ShipsCustomGrideVeiw> {
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
              return Padding(
                padding: EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(context,
                        withNavBar: false,
                        pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                        screen: const DetailsShipsScreen(
                          imageUrl:
                              "https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no",
                        ));
                  },
                  child: const ShipsCustomContainer(
                    title: "name",
                    imageUrl:
                        "https://lh3.googleusercontent.com/a/ACg8ocL0iPJMI5r-7Vq1vRj6jXCbe06c-ngPUuiLVUnBNR6sOZWe8ra9=s360-c-no",
                  ),
                ),
              );
            }));
  }
}
