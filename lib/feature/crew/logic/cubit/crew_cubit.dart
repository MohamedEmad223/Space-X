import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_xplore/feature/crew/logic/cubit/crew_state.dart';
import '../../data/model/crew_model.dart';
import '../../data/repo/crew_repo.dart';

class CrewCubit extends Cubit<CrewState> {
  final CrewRepo _crewRepo;
  final List<CrewModel> allCrewMembers = [];
  int page = 1;

  CrewCubit(this._crewRepo) : super(CrewInitialState());
  static CrewCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> fetchAllCrew(String path) async {
    if (page != 1) {
      emit(LoadingMoreCrewMembers());
    } else {
      emit(CrewLoadingState());
    }
    final result = await _crewRepo.fetchAllCrewMembers(path, page: page);
    log('cubit success=> $result');

    result.fold((failure) {
      log('cubit error=> $failure');
      emit(CrewFailureState(errorMessage: failure.errorMessage));
    }, (successData) {
      page++;
      allCrewMembers.addAll(successData.crewMembers!);
      if (successData.hasNextPage == false) {
        emit(NoMoreCrewMembers());
      } else {
        emit(CrewLoadedState(allCrewMembers));
      }
    });
  }
}
