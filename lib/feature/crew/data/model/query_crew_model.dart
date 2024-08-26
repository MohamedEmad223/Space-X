import 'package:freezed_annotation/freezed_annotation.dart';

import 'crew_model.dart';

part 'query_crew_model.g.dart';

@JsonSerializable()
class QueryCrewModel {
  @JsonKey(name: 'docs')
  List<CrewModel> crewMembers;
  int totalDocs;
  int offset;
  int limit;
  int totalPages;
  int page;
  int pagingCounter;
  bool hasPrevPage;
  bool hasNextPage;
  int prevPage;
  int nextPage;

  QueryCrewModel({
    required this.crewMembers,
    required this.totalDocs,
    required this.offset,
    required this.limit,
    required this.totalPages,
    required this.page,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    required this.prevPage,
    required this.nextPage,
  });

  factory QueryCrewModel.fromJson(Map<String, dynamic> json) =>
      _$QueryCrewModelFromJson(json);

  Map<String, dynamic> toJson() => _$QueryCrewModelToJson(this);
}
