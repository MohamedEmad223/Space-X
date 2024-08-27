import 'package:flutter/material.dart';

import '../../../../core/theming/text_style.dart';

class BuildTextInRowOne extends StatelessWidget {
  const BuildTextInRowOne(
      {super.key,
      required this.agency,
      required this.status,
      required this.launches});
  final String agency;
  final String status;
  final String launches;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          agency,
          style: TextStyles.font16WhiteRegularOrienta,
        ),
        Text(status, style: TextStyles.font16WhiteRegularOrienta),
        Text(launches.toString(), style: TextStyles.font16WhiteRegularOrienta),
      ],
    );
  }
}
