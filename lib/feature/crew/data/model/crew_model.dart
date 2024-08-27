import 'package:freezed_annotation/freezed_annotation.dart';
part 'crew_model.g.dart';

@JsonSerializable()
class CrewModel {
  final String? name;
  final String? agency;
  final String? image;
  final String? wikipedia;
  final List<String>? launches;
  final String? status;

  CrewModel({
    this.name,
    this.agency,
    this.image,
    this.wikipedia,
    this.launches,
    this.status,
  });

  factory CrewModel.fromJson(Map<String, dynamic> json) =>
      _$CrewModelFromJson(json);

  Map<String, dynamic> toJson() => _$CrewModelToJson(this);
}
