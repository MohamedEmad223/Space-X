import '../../data/model/ships_model.dart';

abstract class ShipsState {}

final class ShipsInitial extends ShipsState {}

final class ShipsSuccess extends ShipsState {
  final List<ShipsModel> shipsData;

  ShipsSuccess({required this.shipsData});
}

final class ShipsLoading extends ShipsState {}

final class ShipsFailure extends ShipsState {
  final String errorMessage;

  ShipsFailure({required this.errorMessage});
}

final class LoadingMoreShips extends ShipsState {}

final class NoMoreShips extends ShipsState {}
