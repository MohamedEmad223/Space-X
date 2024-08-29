// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_launches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryLaunches _$QueryLaunchesFromJson(Map<String, dynamic> json) =>
    QueryLaunches(
      (json['docs'] as List<dynamic>?)
          ?.map((e) => LaunchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['totalDocs'] as num?)?.toInt(),
      (json['limit'] as num?)?.toInt(),
      (json['totalPages'] as num?)?.toInt(),
      (json['page'] as num?)?.toInt(),
      (json['pagingCounter'] as num?)?.toInt(),
      json['hasPrevPage'] as bool?,
      json['hasNextPage'] as bool?,
      (json['prevPage'] as num?)?.toInt(),
      (json['nextPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QueryLaunchesToJson(QueryLaunches instance) =>
    <String, dynamic>{
      'docs': instance.launches,
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
      'prevPage': instance.prevPage,
      'nextPage': instance.nextPage,
    };
