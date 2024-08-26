import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/colors_manger.dart';

import '../helpers/spacing.dart';
import '../theming/text_style.dart';
import 'custom_cashed_image_network.dart';

class CustomGridContainer extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CustomGridContainer({
    super.key,
    required this.title,
    required this.imageUrl,
  });

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
          CachedImage(
            networkImageUrl: imageUrl,
            height: 120.h,
            width: double.infinity,
          ),
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
