import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:space_xplore/feature/crew/data/model/crew_model.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/widgets/custom_loading_widgets.dart';
import '../../../../core/widgets/error_request.dart';
import '../../logic/cubit/crew_cubit.dart';
import '../../logic/cubit/crew_state.dart';
import 'custom_grid_veiw.dart';

class AllCrewMembers extends StatelessWidget {
  const AllCrewMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CrewCubit, CrewState>(
        builder: (context, state) {
          final cubit = CrewCubit.get(context);
          List<CrewModel> crewList = cubit.allCrewMembers;
          return state is CrewLoadingState
              ? const CustomLoadingWidget()
              : state is CrewFailureState
                  ? ErrorRequest(
                      fetchData: () =>
                          context.read<CrewCubit>().fetchAllCrew(Routes.crew))
                  : RefreshIndicator(
                      color: ColorsManager.mainColor,
                      onRefresh: () async {
                        cubit.page = 1;
                        context.read<CrewCubit>().fetchAllCrew(Routes.crew);
                      },
                      child: Column(
                        children: [
                          CustomGridVeiw(
                            crewList: crewList,
                          ),
                          state is LoadingMoreCrewMembers
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
