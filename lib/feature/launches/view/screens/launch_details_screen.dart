import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/text_helper.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text_span.dart';
import '../../../../core/widgets/link_text.dart';
import '../../data/models/launch_model.dart';

class LaunchDetailsScreen extends StatelessWidget {
  const LaunchDetailsScreen({
    super.key,
    required this.allLaunches,
  });

  final LaunchModel allLaunches;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 13.h,
              bottom: 13.h,
              start: 10.w,
              end: 10.w,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(30),
                  Center(
                      child: CachedNetworkImage(
                          imageUrl: allLaunches.links!.patch.small.toString())),
                  verticalSpace(25),
                  CustomTextSpan(
                    textTitle: Constants.launchDetailsAttribute,
                    textDescription: allLaunches.name,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextSpan(
                        textTitle: Constants.launchDateAttribute,
                        textDescription: allLaunches.dateUtc != null
                            ? allLaunches.dateUtc.toString()
                            : 'No Date',
                      ),
                      CustomTextSpan(
                        textTitle: Constants.launchFlightNumAttribute,
                        textDescription: allLaunches.flightNumber != null
                            ? allLaunches.flightNumber.toString()
                            : 'No Flight Num..',
                      ),
                    ],
                  ),
                  verticalSpace(20),
                  CustomTextSpan(
                      textTitle: Constants.launchSuccessAttribute,
                      textDescription: allLaunches.success.toString()),
                  verticalSpace(20),
                  CustomTextSpan(
                    textTitle: Constants.launchFailuresAttribute,
                    textDescription: allLaunches.failures.isNotEmpty
                        ? allLaunches.failures[0].reason.toString()
                        : 'No Failures',
                  ),
                  verticalSpace(20),
                  LinkText(
                    linkUrl: allLaunches.links!.wikipedia.toString(),
                    linkName: Constants.wikipediaText,
                  ),
                  verticalSpace(20),
                  LinkText(
                    linkUrl: allLaunches.links!.article.toString(),
                    linkName: Constants.articleText,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
