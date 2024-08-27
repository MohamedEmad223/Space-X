import 'package:json_annotation/json_annotation.dart';
import 'package:space_xplore/feature/launches/data/models/launch_model.dart';

part 'query_launches.g.dart';

@JsonSerializable()
class QueryLaunches {
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

  QueryLaunches({
    required this.launches,
    required this.totalDocs,
    required this.limit,
    required this.totalPages,
    required this.page,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    required this.prevPage,
    required this.nextPage,
  });

  factory QueryLaunches.fromJson(Map<String, dynamic> json) =>
      _$QueryLaunchesFromJson(json);
}
