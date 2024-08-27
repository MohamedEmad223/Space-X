import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/helpers/text_helper.dart';

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
          ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: CachedNetworkImage(
                imageUrl: imageUrl.toString(),
                height: 100.h,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    Constants.noDataText,
                    style: TextStyles.font14WhiteRegularOrienta,
                  )),
                ),
              )),
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
