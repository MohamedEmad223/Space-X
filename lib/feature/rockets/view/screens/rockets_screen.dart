import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/helpers/spacing.dart';
import 'package:space_xplore/core/routes/routes.dart';
import 'package:space_xplore/feature/rockets/logic/cubit/rockets_cubit.dart';

import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_loading_widgets.dart';
import '../../../../core/widgets/error_request.dart';
import '../widgets/rockets_grid_view.dart';

class RocketsScreen extends StatelessWidget {
  const RocketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Constants.rocketsModelName,
                  style: TextStyles.font18WhiteMediumOrienta,
                ),
                verticalSpace(20.h),
                BlocBuilder<RocketsCubit, RocketsState>(
                  builder: (context, state) {
                    if (state is RocketsError) {
                      return ErrorRequest(
                        fetchData: () {
                          context
                              .read<RocketsCubit>()
                              .fetchAllRockets(Routes.rocket);
                        },
                      );
                    } else if (state is RocketsLoading) {
                      return const CustomLoadingWidget();
                    } else if (state is RocketsSucces) {
                      return RocketGridView(
                        rockets: state.rockets,
                      );
                    }
                    return const SizedBox.shrink();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
