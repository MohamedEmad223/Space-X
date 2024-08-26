import 'package:freezed_annotation/freezed_annotation.dart';
part 'crew_model.g.dart';

@JsonSerializable()
class CrewModel {
  final String name;
  final String agency;
  final String image;
  final String wikipedia;
  final List<String> launches;
  final String status;

  CrewModel({
    required this.name,
    required this.agency,
    required this.image,
    required this.wikipedia,
    required this.launches,
    required this.status,
  });

  factory CrewModel.fromJson(Map<String, dynamic> json) =>
      _$CrewModelFromJson(json);

  Map<String, dynamic> toJson() => _$CrewModelToJson(this);
}
