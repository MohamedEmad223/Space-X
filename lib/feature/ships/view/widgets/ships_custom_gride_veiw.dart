import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:space_xplore/core/helpers/text_helper.dart';
import 'package:space_xplore/feature/ships/data/model/ships_model.dart';
import 'package:space_xplore/feature/ships/view/screens/details_ships_screen.dart';
import 'package:space_xplore/feature/ships/view/widgets/ships_custom_container.dart';

import '../../../../core/routes/routes.dart';
import '../../logic/cubit/ships_cubit.dart';

class ShipsCustomGrideVeiw extends StatefulWidget {
  const ShipsCustomGrideVeiw({
    super.key,
    required this.shipsList,
  });

  final List<ShipsModel> shipsList;

  @override
  State<ShipsCustomGrideVeiw> createState() => _CustomGridVeiwState();
}

class _CustomGridVeiwState extends State<ShipsCustomGrideVeiw> {
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
            itemCount: widget.shipsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 100.w / 120.h,
              crossAxisSpacing: 40.w,
              mainAxisSpacing: 35.h,
            ),
            itemBuilder: (context, index) {
              final ships = widget.shipsList[index];
              return Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    PersistentNavBarNavigator.pushNewScreen(context,
                        withNavBar: false,
                        pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                        screen: DetailsShipsScreen(
                          ships: ships,
                        ));
                  },
                  child: ShipsCustomContainer(
                    title: ships.shipName ?? '',
                    imageUrl: ships.image ?? Constants.noDataText,
                  ),
                ),
              );
            }));
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      BlocProvider.of<ShipsCubit>(context).fetchAllShipsData(Routes.ships);
    }
  }
}
