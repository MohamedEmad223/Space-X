import 'package:space_xplore/feature/crew/data/model/crew_model.dart';

abstract class CrewState {}

class CrewInitialState extends CrewState {}

class CrewLoadingState extends CrewState {}

class CrewLoadedState extends CrewState {
  final List<CrewModel> crewMembers;

  CrewLoadedState(this.crewMembers);
}

final class LoadingMoreCrewMembers extends CrewState {}

final class NoMoreCrewMembers extends CrewState {}

class CrewFailureState extends CrewState {
  final String errorMessage;

  CrewFailureState({required this.errorMessage});
}
