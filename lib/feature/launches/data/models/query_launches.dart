import 'package:json_annotation/json_annotation.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

part 'query_launches.g.dart';

@JsonSerializable()
class QueryLaunches {
  @JsonKey(name: "docs")
  final List<LaunchModel>? launches;
  final int? totalDocs;
  final int? limit;
  final int? totalPages;
  final int? page;
  final int? pagingCounter;
  final bool? hasPrevPage;
  final bool? hasNextPage;
  final int? prevPage;
  final int? nextPage;

  QueryLaunches(
    this.launches,
    this.totalDocs,
    this.limit,
    this.totalPages,
    this.page,
    this.pagingCounter,
    this.hasPrevPage,
    this.hasNextPage,
    this.prevPage,
    this.nextPage,
  );

  factory QueryLaunches.fromJson(json) => _$QueryLaunchesFromJson(json);
}
