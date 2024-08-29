// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => LaunchModel(
      json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      (json['failures'] as List<dynamic>?)
          ?.map((e) => FailuresModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['flightNumber'] as num?)?.toInt(),
      json['name'] as String?,
      json['dateUtc'] as String?,
      json['id'] as String?,
      json['success'] as bool?,
    );

Map<String, dynamic> _$LaunchModelToJson(LaunchModel instance) =>
    <String, dynamic>{
      'links': instance.links,
      'failures': instance.failures,
      'flightNumber': instance.flightNumber,
      'name': instance.name,
      'dateUtc': instance.dateUtc,
      'id': instance.id,
      'success': instance.success,
    };

FailuresModel _$FailuresModelFromJson(Map<String, dynamic> json) =>
    FailuresModel(
      time: (json['time'] as num?)?.toInt(),
      altitude: (json['altitude'] as num?)?.toInt(),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$FailuresModelToJson(FailuresModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => LinksModel(
      patch: PatchData.fromJson(json['patch'] as Map<String, dynamic>),
      webcast: json['webcast'] as String?,
      youtubeId: json['youtube_id'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String,
    );

Map<String, dynamic> _$LinksModelToJson(LinksModel instance) =>
    <String, dynamic>{
      'patch': instance.patch,
      'webcast': instance.webcast,
      'youtube_id': instance.youtubeId,
      'article': instance.article,
      'wikipedia': instance.wikipedia,
    };

PatchData _$PatchDataFromJson(Map<String, dynamic> json) => PatchData(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PatchDataToJson(PatchData instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };
