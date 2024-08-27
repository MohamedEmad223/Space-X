import 'package:freezed_annotation/freezed_annotation.dart';

import 'crew_model.dart';

part 'query_crew_model.g.dart';

@JsonSerializable()
class QueryCrewModel {
  @JsonKey(name: 'docs')
  List<CrewModel>? crewMembers;
  int? totalDocs;
  int? offset;
  int? limit;
  int? totalPages;
  int? page;
  int? pagingCounter;
  bool? hasPrevPage;
  bool? hasNextPage;
  int? prevPage;
  int? nextPage;

  QueryCrewModel({
    this.crewMembers,
    this.totalDocs,
    this.offset,
    this.limit,
    this.totalPages,
    this.page,
    this.pagingCounter,
    this.hasPrevPage,
    this.hasNextPage,
    this.prevPage,
    this.nextPage,
  });

  factory QueryCrewModel.fromJson(Map<String, dynamic> json) =>
      _$QueryCrewModelFromJson(json);

  Map<String, dynamic> toJson() => _$QueryCrewModelToJson(this);
}
