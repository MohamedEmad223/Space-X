import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_xplore/feature/rockets/data/repo/rockets_repo.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/model/rocket_model.dart';

part 'rockets_state.dart';
part 'rockets_cubit.freezed.dart';

class RocketsCubit extends Cubit<RocketsState> {
  RocketsCubit(this._rocketsRepo) : super(const RocketsState.rocketsoinitial());
  final RocketsRepo _rocketsRepo;

  void fetchAllRockets(String path) async {
    emit(const RocketsState.rocketsloading());
    final rockets = await _rocketsRepo.getAllRockets(path);
    rockets.fold(
      (error) => emit(RocketsState.rocketserror(error)),
      (rockets) => emit(RocketsState.rocketssucces(rockets)),
    );
  }
}
