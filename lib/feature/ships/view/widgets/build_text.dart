import 'package:flutter/material.dart';

import '../../../../core/theming/text_style.dart';

class BuildText extends StatelessWidget {
  const BuildText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.font14WhiteRegularOrienta,
    );
  }
}
