import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/core/routes/routes.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

import '../../logic/cubit/launch_cubit.dart';
import '../screens/launch_details_screen.dart';
import 'launch_custom_card.dart';

class LaunchesGridView extends StatefulWidget {
  final List<LaunchModel> allLaunches;

  const LaunchesGridView({
    super.key,
    required this.allLaunches,
  });

  @override
  State<LaunchesGridView> createState() => _LaunchesGridViewState();
}

class _LaunchesGridViewState extends State<LaunchesGridView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: GridView.builder(
            controller: _scrollController,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 35.w,
              mainAxisSpacing: 15.h,
            ),
            itemCount: widget.allLaunches.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                columnCount: widget.allLaunches.length,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  horizontalOffset: 50.0.h,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.sizeUp,
                          screen: LaunchDetailsScreen(
                            allLaunches: widget.allLaunches[index],
                          ),
                        );
                      },
                      child: LaunchCustomCard(
                        data: widget.allLaunches[index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _scrollListener() {
    if (_scrollController.position.maxScrollExtent ==
        _scrollController.position.pixels) {
      BlocProvider.of<LaunchCubit>(context).getAllLaunches(Routes.launches);
    }
  }
}
