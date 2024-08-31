import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/launch_model.dart';
import '../../data/repo/launch_repo.dart';
import 'launch_state.dart';

class LaunchCubit extends Cubit<LaunchState> {
  final LaunchRepo _launchRepo;
  final List<LaunchModel> allLaunches = [];
  int page = 1;

  LaunchCubit(this._launchRepo) : super(LaunchInitial());

  static LaunchCubit get(BuildContext context) => BlocProvider.of(context);

  void getAllLaunches(String path) async {
    if (page != 1) {
      emit(LoadingMoreLaunches());
    } else {
      emit(GetAllLaunchesLoading());
    }
    final result = await _launchRepo.getAllLaunches(page: page);
    result.fold((failure) {
      log('error=> $failure');
      emit(GetAllLaunchesFailure(errorMessage: failure.errorMessage));
    }, (successData) {
      page++;
      log('success=> $successData');
      allLaunches.addAll(successData.launches!);
      if (successData.hasNextPage == false) {
        emit(NoMoreLaunches());
      } else {
        emit(GetAllLaunchesSuccess(launches: allLaunches));
      }
    });
  }

  void getOneLaunch(String path, {required String id}) async {
    final result = await _launchRepo.getLaunchById(path, id);
    result.fold((failure) {
      emit(GetOneLaunchFailure(errorMessage: failure.errorMessage));
    }, (successData) {
      emit(GetOneLaunchSuccess(launches: successData));
    });
  }
}
