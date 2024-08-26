
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../data/model/rocket_model.dart';
import '../widgets/custom_crusal_widgets.dart';
import '../widgets/details_section.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketModel rocketModel;
  const RocketDetailsScreen({super.key, required this.rocketModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(10),
                ImageSlider(
                  images: rocketModel.flickrImages,
                ),
                DetailsSection(
                  rocket: rocketModel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
