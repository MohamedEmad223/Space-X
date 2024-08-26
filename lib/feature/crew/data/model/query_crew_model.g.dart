// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_crew_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryCrewModel _$QueryCrewModelFromJson(Map<String, dynamic> json) =>
    QueryCrewModel(
      crewMembers: (json['docs'] as List<dynamic>)
          .map((e) => CrewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDocs: (json['totalDocs'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pagingCounter: (json['pagingCounter'] as num).toInt(),
      hasPrevPage: json['hasPrevPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
      prevPage: (json['prevPage'] as num).toInt(),
      nextPage: (json['nextPage'] as num).toInt(),
    );

Map<String, dynamic> _$QueryCrewModelToJson(QueryCrewModel instance) =>
    <String, dynamic>{
      'docs': instance.crewMembers,
      'totalDocs': instance.totalDocs,
      'offset': instance.offset,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
      'prevPage': instance.prevPage,
      'nextPage': instance.nextPage,
    };
