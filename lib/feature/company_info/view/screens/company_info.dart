import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:space_xplore/core/widgets/error_request.dart';
import 'package:space_xplore/feature/company_info/logic/cubit/company_info_cubit.dart';
import 'package:space_xplore/feature/company_info/view/widgets/company_info_logo.dart';
import 'package:space_xplore/feature/company_info/view/widgets/title_and_describtion_column.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/text_helper.dart';
import '../../../../core/theming/colors_manger.dart';
import '../../../../core/theming/text_style.dart';
import '../../../../core/widgets/background_container.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_loading_widgets.dart';
import '../widgets/company_info_details.dart';

class CompanyInfoScreen extends StatelessWidget {
  const CompanyInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomAppBar(),
      body: BackgroundContainer(
        child: SafeArea(
          child: BlocBuilder<CompanyInfoCubit, CompanyInfoState>(
            builder: (context, state) {
              
              return state is CompanyInfoSucces
                  ? SingleChildScrollView(
                      child: Center(
                        child: Container(
                          width: 300.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: ColorsManager.lightTransparentColor,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5.h,
                              horizontal: 15.w,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                verticalSpace(10),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(24.r),
                                      child: Container(
                                        width: 100.w,
                                        height: 100.h,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                              Constants.companyLogoAssetPath,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    horizontalSpace(8),
                                    Text(
                                      state.companyInfo.name,
                                      style: TextStyles
                                          .font25WhiteExtraBoldOrbitron,
                                    ),
                                  ],
                                ),
                                verticalSpace(16),
                                TitleAndDescriptionColumn(
                                  title: Constants
                                      .companyInfoHeadQuartersAttribute,
                                  description:
                                      "${state.companyInfo.headquarters.address},${state.companyInfo.headquarters.city},${state.companyInfo.headquarters.state}",
                                ),
                                verticalSpace(16),
                                CompanyInfoDetails(
                                    companyInfo: state.companyInfo),
                                verticalSpace(16),
                                TitleAndDescriptionColumn(
                                  title:
                                      Constants.companyInfoEmployeesAttribute,
                                  description:
                                      state.companyInfo.employees.toString(),
                                ),
                                verticalSpace(16),
                                TitleAndDescriptionColumn(
                                  title: Constants.companyInfoAboutUsAttribute,
                                  description: state.companyInfo.summary,
                                ),
                                verticalSpace(16),
                                CompanyInfoLogos(
                                    links: state.companyInfo.links),
                                verticalSpace(10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : state is CompanyInfoError
                      ? ErrorRequest(fetchData: () {
                          context.read<CompanyInfoCubit>().fetchCompanyInfo();
                        })
                      : const CustomLoadingWidget();
            },
          ),
        ),
      ),
    );
  }
}
