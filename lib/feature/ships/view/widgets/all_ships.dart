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

class AllShips extends StatefulWidget {
  const AllShips({super.key});

  @override
  State<AllShips> createState() => _AllShipssState();
}

class _AllShipssState extends State<AllShips> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

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
                  ? ErrorRequest(fetchData: _fetchData)
                  : RefreshIndicator(
                      color: ColorsManager.mainColor,
                      onRefresh: () async {
                        cubit.page = 1;
                        _fetchData();
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

  void _fetchData() {
    BlocProvider.of<ShipsCubit>(context).fetchAllShipsData(Routes.ships);
  }
}
