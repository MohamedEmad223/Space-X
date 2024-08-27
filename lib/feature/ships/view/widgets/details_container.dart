import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/feature/ships/data/model/ships_model.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/link_text.dart';
import '../../../crew/view/widgets/div.dart';
import 'build_text.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key, required this.shipsdetails});
  final ShipsModel shipsdetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.w,
      decoration:
          const BoxDecoration(color: ColorsManager.lightTransparentColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              shipsdetails.shipName!,
              style: TextStyles.font24WhiteBoldOrbitron,
            ),
            const Div(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    BuildText(
                        text:
                            "${Constants.shipTypeAttribute} ${shipsdetails.shipName!}"),
                    const Divider(),
                    BuildText(
                        text:
                            "${Constants.shipStatusAttribute} ${shipsdetails.active!}"),
                    const Divider(),
                    BuildText(
                        text:
                            "${Constants.shipYearBuiltAttribute} ${shipsdetails.yearBuilt!}"),
                    const Divider(),
                    BuildText(
                        text:
                            "${Constants.shipWeightAttribute} ${shipsdetails.weightKg!} (kg)"),
                    const Divider(),
                    LinkText(
                      linkUrl: shipsdetails.link!,
                      linkName: shipsdetails.shipName!,
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
                          shipsdetails.image!,
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
