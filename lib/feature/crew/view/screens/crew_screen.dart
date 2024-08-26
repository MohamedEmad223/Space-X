import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/text_style.dart';
import '../widgets/custom_grid_veiw.dart';

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
            const CustomGridVeiw()
          ],
        ),
      ))),
    );
  }
}
