import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_style.dart';

class BuildTextInRowTwo extends StatelessWidget {
  const BuildTextInRowTwo(
      {super.key,
      required this.agency,
      required this.status,
      required this.launches});
  final String agency;
  final String status;
  final String launches;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(
            agency,
            style: TextStyles.font16WhiteRegularOrienta,
          ),
          SizedBox(
            width: 39.w,
          ),
          Text(status, style: TextStyles.font16WhiteRegularOrienta),
          SizedBox(
            width: 25.w,
          ),
          Expanded(
              child: Text(launches.toString(),
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: TextStyles.font16WhiteRegularOrienta)),
        ],
      ),
    );
  }
}
