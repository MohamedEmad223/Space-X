import 'package:flutter/material.dart';

import '../theming/text_style.dart';

class CustomTextSpan extends StatelessWidget {
  final String textTitle;
  final String? textDescription;

  const CustomTextSpan({
    super.key,
    required this.textTitle,
    required this.textDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: textTitle,
            style: TextStyles.font16LightBlueRegularOrienta,
          ),
          TextSpan(
            text: textDescription,
            style: TextStyles.font14WhiteRegularOrienta,
          ),
        ],
      ),
    );
  }
}
