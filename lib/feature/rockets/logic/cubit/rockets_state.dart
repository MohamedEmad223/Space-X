part of 'rockets_cubit.dart';

@freezed
class RocketsState with _$RocketsState {
  const factory RocketsState.rocketsoinitial() = _rocketsoInitial;
  const factory RocketsState.rocketsloading() = RocketsLoading;
  const factory RocketsState.rocketssucces(List<RocketModel> rockets) = RocketsSucces;
  const factory RocketsState.rocketserror(ApiErrorHandler apiErrorHandler) = RocketsError;
}
