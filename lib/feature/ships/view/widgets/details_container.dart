import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/link_text.dart';
import '../../../crew/view/widgets/div.dart';
import 'build_text.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      decoration:
          const BoxDecoration(color: ColorsManager.lightTransparentColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'name',
              style: TextStyles.font24WhiteBoldOrbitron,
            ),
            const Div(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const BuildText(text: Constants.shipTypeAttribute),
                    const Divider(),
                    const BuildText(text: Constants.shipStatusAttribute),
                    const Divider(),
                    const BuildText(text: Constants.shipYearBuiltAttribute),
                    const Divider(),
                    const BuildText(text: Constants.shipWeightAttribute),
                    const Divider(),
                    const LinkText(
                      linkUrl: Constants.shipTypeAttribute,
                      linkName: Constants.shipTypeAttribute,
                    ),
                    Divider(
                      thickness: 5.h,
                      color: Colors.red,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 130.w,
                      height: 130.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.r),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const Divider()
                  ],
                ),
              ],
            ),
            const Div()
          ],
        ),
      ),
    );
  }
}
