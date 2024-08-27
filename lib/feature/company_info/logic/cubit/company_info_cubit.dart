import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_xplore/feature/company_info/data/repo/company_info_repo.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/model/company_info_model.dart';

part 'company_info_state.dart';
part 'company_info_cubit.freezed.dart';

class CompanyInfoCubit extends Cubit<CompanyInfoState> {
  CompanyInfoCubit(this._companyInfoRepo)
      : super(const CompanyInfoState.initial());

  final CompanyInfoRepo _companyInfoRepo;

  void fetchCompanyInfo(String path) async {
    emit(const CompanyInfoState.companyInfoloading());
    final companyInfo = await _companyInfoRepo.fetchCompanyInfo(path);
    companyInfo.fold(
      (error) {
        log('cubit error => $error');
        emit(CompanyInfoState.companyInfoError(error));
      },
      (companyInfo) {
        log('cubit success => $companyInfo');
        emit(CompanyInfoState.companyInfoSucces(companyInfo));
      },
    );
  }
}
