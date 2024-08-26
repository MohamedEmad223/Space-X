import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';


import '../helpers/spacing.dart';
import '../helpers/text_helper.dart';
import '../theming/colors_manger.dart';
import '../theming/text_style.dart';

class ErrorRequest extends StatelessWidget {
  final void Function() fetchData;

  const ErrorRequest({
    super.key,
    required this.fetchData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Lottie.asset(
            Constants.failedRequestAssetPath,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          Constants.whoopsText,
          style: TextStyles.font24WhiteBoldOrbitron,
        ),
        verticalSpace(15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            Constants.failedRequestText,
            style: TextStyles.font12WhiteBoldOrienta,
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(35),
        ElevatedButton.icon(
          label: const Text(Constants.retryText),
          onPressed: fetchData,
          icon: const Icon(Icons.refresh),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.mainColor,
            foregroundColor: ColorsManager.whiteColor,
            minimumSize: Size(120.w, 50.h),
            textStyle: TextStyles.font12WhiteBoldOrienta,
          ),
        ),
      ],
    );
  }
}