import 'package:json_annotation/json_annotation.dart';
part 'company_info_model.g.dart';

@JsonSerializable()
class CompanyInfoModel {
  Headquarters? headquarters;
  Links? links;
  String? name;
  String? founder;
  int? founded;
  int? employees;
  int? vehicles;
  @JsonKey(name: 'launch_sites')
  int? launchSites;
  @JsonKey(name: 'test_sites')
  int? testSites;
  String? ceo;
  String? summary;

  CompanyInfoModel({
    this.headquarters,
    this.links,
    this.name,
    this.founder,
    this.founded,
    this.employees,
    this.vehicles,
    this.launchSites,
    this.testSites,
    this.ceo,
    this.summary,
  });

  factory CompanyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoModelFromJson(json);
}

@JsonSerializable()
class Headquarters {
  String? address;
  String? city;
  String? state;

  Headquarters({
    this.address,
    this.city,
    this.state,
  });

  factory Headquarters.fromJson(Map<String, dynamic> json) =>
      _$HeadquartersFromJson(json);
}

@JsonSerializable()
class Links {
  String? website;
  String? flickr;
  String? twitter;
  String? elonTwitter;

  Links({
    this.website,
    this.flickr,
    this.twitter,
    this.elonTwitter,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}
