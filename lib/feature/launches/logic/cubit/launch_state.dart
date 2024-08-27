import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

abstract class LaunchState {}

final class LaunchInitial extends LaunchState {}

// All launches
final class GetAllLaunchesSuccess extends LaunchState {
  final List<LaunchModel> launches;

  GetAllLaunchesSuccess({required this.launches});
}

final class GetAllLaunchesLoading extends LaunchState {}

final class GetAllLaunchesFailure extends LaunchState {
  final String errorMessage;

  GetAllLaunchesFailure({required this.errorMessage});
}

final class LoadingMoreLaunches extends LaunchState {}

final class NoMoreLaunches extends LaunchState {}

// One launch
final class GetOneLaunchSuccess extends LaunchState {
  final LaunchModel launches;

  GetOneLaunchSuccess({required this.launches});
}

final class GetOneLaunchLoading extends LaunchState {}

final class GetOneLaunchFailure extends LaunchState {
  final String errorMessage;

  GetOneLaunchFailure({required this.errorMessage});
}
