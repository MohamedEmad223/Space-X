// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => RocketModel(
      height: Height.fromJson(json['height']),
      diameter: Diameter.fromJson(json['diameter']),
      mass: Mass.fromJson(json['mass']),
      flickrImages: (json['flickr_images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      active: json['active'] as bool,
      country: json['country'] as String,
      company: json['company'] as String,
      wikipedia: json['wikipedia'] as String,
      description: json['description'] as String,
      id: json['id'] as String,
    );

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      meters: (json['meters'] as num).toDouble(),
      feet: (json['feet'] as num).toDouble(),
    );

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: (json['kg'] as num).toInt(),
      lb: (json['lb'] as num).toInt(),
    );
