import 'package:flutter/material.dart';
import 'package:space_xplore/core/widgets/background_container.dart';
import 'package:space_xplore/core/widgets/custom_app_bar.dart';
import 'package:space_xplore/feature/ships/data/model/ships_model.dart';
import 'package:space_xplore/feature/ships/view/widgets/details_container.dart';

class DetailsShipsScreen extends StatelessWidget {
  const DetailsShipsScreen({super.key, required this.ships});
  final ShipsModel ships;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
          child: SafeArea(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetailsContainer(
            shipsdetails: ships,
          )
        ],
      ))),
    );
  }
}
