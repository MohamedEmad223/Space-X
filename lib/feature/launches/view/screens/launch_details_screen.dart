import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/text_helper.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_text_span.dart';
import '../../../../core/widgets/link_text.dart';
import '../../data/models/launch_model.dart';

class LaunchDetailsScreen extends StatefulWidget {
  const LaunchDetailsScreen({
    super.key,
    required this.allLaunches,
  });

  final LaunchModel allLaunches;

  @override
  State<LaunchDetailsScreen> createState() => _LaunchDetailsScreenState();
}

class _LaunchDetailsScreenState extends State<LaunchDetailsScreen> {
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
                    child: YoutubePlayer(
                      controller: YoutubePlayerController(
                          initialVideoId:
                              widget.allLaunches.links!.youtubeId.toString()),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.red,
                    ),
                  ),
                  verticalSpace(25),
                  CustomTextSpan(
                    textTitle: Constants.launchDetailsAttribute,
                    textDescription: widget.allLaunches.name,
                  ),
                  verticalSpace(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextSpan(
                        textTitle: Constants.launchDateAttribute,
                        textDescription: widget.allLaunches.dateUtc != null
                            ? widget.allLaunches.dateUtc.toString()
                            : 'No Date',
                      ),
                      CustomTextSpan(
                        textTitle: Constants.launchFlightNumAttribute,
                        textDescription: widget.allLaunches.flightNumber != null
                            ? widget.allLaunches.flightNumber.toString()
                            : 'No Flight Num..',
                      ),
                    ],
                  ),
                  verticalSpace(20),
                  CustomTextSpan(
                      textTitle: Constants.launchSuccessAttribute,
                      textDescription: widget.allLaunches.success.toString()),
                  verticalSpace(20),
                  CustomTextSpan(
                    textTitle: Constants.launchFailuresAttribute,
                    textDescription: widget.allLaunches.failures.isNotEmpty
                        ? widget.allLaunches.failures[0].reason.toString()
                        : 'No Failures',
                  ),
                  verticalSpace(20),
                  LinkText(
                    linkUrl: widget.allLaunches.links!.wikipedia.toString(),
                    linkName: Constants.wikipediaText,
                  ),
                  verticalSpace(20),
                  LinkText(
                    linkUrl: widget.allLaunches.links!.article.toString(),
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
