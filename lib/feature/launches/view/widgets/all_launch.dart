import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:space_xplore/core/routes/routes.dart';
import 'package:space_xplore/core/widgets/error_request.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

import '../../../../core/theming/colors_manger.dart';
import '../../../../core/widgets/custom_loading_widgets.dart';
import '../../logic/cubit/launch_cubit.dart';
import '../../logic/cubit/launch_state.dart';
import 'launch_grid_veiw.dart';

class AllLaunchesBody extends StatelessWidget {
  const AllLaunchesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<LaunchCubit, LaunchState>(
        builder: (context, state) {
          final cubit = LaunchCubit.get(context);
          List<LaunchModel> allLaunches = cubit.allLaunches;
          return state is GetAllLaunchesLoading
              ? const CustomLoadingWidget()
              : state is GetAllLaunchesFailure
                  ? ErrorRequest(
                      fetchData: () => context
                          .read<LaunchCubit>()
                          .getAllLaunches(Routes.launches))
                  : RefreshIndicator(
                      color: ColorsManager.mainColor,
                      onRefresh: () async {
                        cubit.page = 1;
                        context
                            .read<LaunchCubit>()
                            .getAllLaunches(Routes.launches);
                      },
                      child: Column(
                        children: [
                          LaunchesGridView(
                            allLaunches: allLaunches,
                          ),
                          state is LoadingMoreLaunches
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
