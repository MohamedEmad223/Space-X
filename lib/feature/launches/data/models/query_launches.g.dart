// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryLaunches _$QueryLaunchesFromJson(Map<String, dynamic> json) =>
    QueryLaunches(
      launches: (json['launches'] as List<dynamic>?)
          ?.map((e) => LaunchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDocs: (json['totalDocs'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pagingCounter: (json['pagingCounter'] as num?)?.toInt(),
      hasPrevPage: json['hasPrevPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
      prevPage: (json['prevPage'] as num?)?.toInt(),
      nextPage: (json['nextPage'] as num?)?.toInt(),
    );
