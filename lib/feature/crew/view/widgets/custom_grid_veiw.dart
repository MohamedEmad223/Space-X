import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/feature/crew/data/model/crew_model.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/widgets/custom_grid_view.dart';
import '../../logic/cubit/crew_cubit.dart';
import '../screens/crew_details_screen.dart';

class CustomGridVeiw extends StatefulWidget {
  const CustomGridVeiw({super.key, required this.crewList});

  final List<CrewModel> crewList;

  @override
  State<CustomGridVeiw> createState() => _CustomGridVeiwState();
}

class _CustomGridVeiwState extends State<CustomGridVeiw> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            controller: _scrollController,
            itemCount: widget.crewList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100.w / 120.h,
              crossAxisSpacing: 40.w,
              mainAxisSpacing: 35.h,
            ),
            itemBuilder: (context, index) {
              final crew = widget.crewList[index];
              return GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    withNavBar: false,
                    pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                    screen: CrewDetailsScreen(
                      imageUrl: crew.image!,
                      crewModel: crew,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: CustomGridContainer(
                    title: crew.name!,
                    imageUrl: crew.image!,
                  ),
                ),
              );
            }));
  }

  void _scrollListener() {
    final currentScroll = _scrollController.position.pixels;
    final maxScroll = _scrollController.position.maxScrollExtent;
    if (currentScroll == maxScroll) {
      BlocProvider.of<CrewCubit>(context).fetchAllCrew(Routes.crew);
    }
  }
}
