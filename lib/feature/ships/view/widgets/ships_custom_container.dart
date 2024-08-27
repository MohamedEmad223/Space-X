import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';

class ShipsCustomContainer extends StatelessWidget {
  const ShipsCustomContainer(
      {super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
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
        borderRadius: BorderRadius.circular(20.r),
        color: ColorsManager.cardColor,
      ),
      child: Column(
        children: [
          Image.network(imageUrl),
          verticalSpace(10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              title,
              style: TextStyles.font12WhiteBoldOrienta,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
