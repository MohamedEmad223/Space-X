import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:space_xplore/feature/ships/data/model/ships_model.dart';
import 'package:space_xplore/feature/ships/logic/cubit/ships_cubit.dart';
import 'package:space_xplore/feature/ships/logic/cubit/ships_state.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/widgets/custom_loading_widgets.dart';
import '../../../../core/widgets/error_request.dart';

import 'ships_custom_gride_veiw.dart';

class AllShips extends StatelessWidget {
  const AllShips({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ShipsCubit, ShipsState>(
        builder: (context, state) {
          final cubit = ShipsCubit.get(context);
          List<ShipsModel> shipsList = cubit.allShips;
          return state is ShipsLoading
              ? const CustomLoadingWidget()
              : state is ShipsFailure
                  ? ErrorRequest(
                      fetchData: () => context
                          .read<ShipsCubit>()
                          .fetchAllShipsData(Routes.ships))
                  : RefreshIndicator(
                      color: ColorsManager.mainColor,
                      onRefresh: () async {
                        cubit.page = 1;
                        context
                            .read<ShipsCubit>()
                            .fetchAllShipsData(Routes.ships);
                      },
                      child: Column(
                        children: [
                          ShipsCustomGrideVeiw(
                            shipsList: shipsList,
                          ),
                          state is LoadingMoreShips
                              ? Center(
                                  child: SpinKitThreeBounce(
                                    size: 30.sp,
                                    color: ColorsManager.mainColor,
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    );
        },
      ),
    );
  }
}
