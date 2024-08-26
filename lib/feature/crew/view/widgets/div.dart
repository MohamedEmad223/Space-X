import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manger.dart';

class Div extends StatelessWidget {
  const Div({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorsManager.whiteColor,
      thickness: 0.1,
    );
  }
}
