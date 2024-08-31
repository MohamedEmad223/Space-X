import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';

class LaunchCustomCard extends StatelessWidget {
  const LaunchCustomCard({super.key, required this.data});

  final LaunchModel data;

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
            CachedNetworkImage(
              imageUrl: data.links!.patch.small.toString(),
              alignment: Alignment.center,
              width: 80.w,
              height: 80.h,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Text(" image"),
            ),
            const Spacer(),
            Text(
              data.name.toString(),
              style: TextStyles.font14WhiteRegularOrienta,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
