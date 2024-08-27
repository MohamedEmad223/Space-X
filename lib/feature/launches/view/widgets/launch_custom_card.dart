import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';

class LaunchCustomCard extends StatelessWidget {
  const LaunchCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorsManager.cardColor.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 5.r,
            offset: Offset(5.w, 5.h),
          ),
          BoxShadow(
            color: ColorsManager.shadowColor,
            blurRadius: 10.r,
            offset: Offset(5.w, 5.h),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 15.w, bottom: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/launch.png.png'),
            const Spacer(),
            Text(
              'data',
              style: TextStyles.font16WhiteRegularOrienta,
            )
          ],
        ),
      ),
    );
  }
}
