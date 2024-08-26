import 'package:flutter/material.dart';

import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';


class LaunchsScreen extends StatelessWidget {
  const LaunchsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(),
        body: BackgroundContainer(
            child: SafeArea(
          child: Text('LaunchsScreen'),
        )));
  }
}
