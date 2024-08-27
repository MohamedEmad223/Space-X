import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_xplore/feature/ships/logic/cubit/ships_state.dart';

import '../../data/model/ships_model.dart';
import '../../data/repo/ships_repo.dart';

class ShipsCubit extends Cubit<ShipsState> {
  ShipsRepo shipsRepo;
  final List<ShipsModel> allShips = [];
  int page = 1;
  ShipsCubit(this.shipsRepo) : super(ShipsInitial());
  static ShipsCubit get(BuildContext context) => BlocProvider.of(context);

  Future<void> getAllShipsData(String path) async {
    if (page != 1) {
      emit(LoadingMoreShips());
    } else {
      emit(ShipsLoading());
    }
    var result = await shipsRepo.fetchAllShips(path, page: page);
    result.fold((failure) {
      emit(ShipsFailure(errorMessage: failure.errorMessage));
    }, (successData) {
      page++;
      allShips.addAll(successData.ships!);
      if (successData.hasNextPage == false) {
        emit(NoMoreShips());
      } else {
        emit(ShipsSuccess(shipsData: allShips));
      }
    });
  }
}
