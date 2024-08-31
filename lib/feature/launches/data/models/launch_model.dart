import 'package:freezed_annotation/freezed_annotation.dart';
part 'launch_model.g.dart';

@JsonSerializable()
class LaunchModel {
  final LinksModel? links;
  final List<FailuresModel> failures;
  final int? flightNumber;
  final String? name;
  final String? dateUtc;
  final String? id;
  final bool? success;

  LaunchModel({
    required this.failures,
    required this.flightNumber,
    required this.dateUtc,
    required this.name,
    required this.id,
    required this.success,
    required this.links,
  });

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);
}

@JsonSerializable()
class FailuresModel {
  final int? time;
  final int? altitude;
  final String? reason;

  FailuresModel({
    required this.time,
    required this.altitude,
    required this.reason,
  });

  factory FailuresModel.fromJson(Map<String, dynamic> json) =>
      _$FailuresModelFromJson(json);
}

@JsonSerializable()
class LinksModel {
  final PatchData patch;
  final String? webcast;
  @JsonKey(name: "youtube_id")
  final String? youtubeId;
  final String? article;
  final String wikipedia;

  LinksModel({
    required this.patch,
    required this.webcast,
    required this.youtubeId,
    required this.article,
    required this.wikipedia,
  });

  factory LinksModel.fromJson(Map<String, dynamic> json) =>
      _$LinksModelFromJson(json);
}

@JsonSerializable()
class PatchData {
  final String? small;
  final String? large;

  PatchData({
    required this.small,
    required this.large,
  });

  factory PatchData.fromJson(Map<String, dynamic> json) =>
      _$PatchDataFromJson(json);
}
