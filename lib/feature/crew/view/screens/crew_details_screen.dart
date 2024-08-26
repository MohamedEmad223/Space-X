import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/helpers/text_helper.dart';
import 'package:space_xplore/core/theming/text_style.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';
import 'package:space_xplore/feature/crew/data/model/crew_model.dart';

import '../../../../core/theming/colors_manger.dart';
import '../widgets/circle_image.dart';
import '../widgets/div.dart';
import '../widgets/build_text_in_row.dart';

class CrewDetailsScreen extends StatelessWidget {
  const CrewDetailsScreen(
      {super.key, required this.imageUrl, required this.crewModel});
  final String imageUrl;
  final CrewModel crewModel;

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
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Column(children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CircleImage(imageUrl: imageUrl),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          Constants.crewModelName,
                          style: TextStyles.font24WhiteBoldOrbitron,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Div(),
                        SizedBox(
                          height: 10.h,
                        ),
                        BuildTextInRow(
                            agency: crewModel.agency,
                            status: crewModel.status,
                            launches: crewModel.launches.toString()),
                        SizedBox(
                          height: 10.h,
                        ),
                        const BuildTextInRow(
                            agency: 'Nasa', status: 'Active', launches: '10'),
                      ]),
                    ))
              ],
            ),
          ),
        ));
  }
}
