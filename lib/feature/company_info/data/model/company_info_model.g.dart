// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyInfoModel _$CompanyInfoModelFromJson(Map<String, dynamic> json) =>
    CompanyInfoModel(
      headquarters:
          Headquarters.fromJson(json['headquarters'] as Map<String, dynamic>),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      name: json['name'] as String,
      founder: json['founder'] as String,
      founded: (json['founded'] as num).toInt(),
      employees: (json['employees'] as num).toInt(),
      vehicles: (json['vehicles'] as num).toInt(),
      launchSites: (json['launch_sites'] as num).toInt(),
      testSites: (json['test_sites'] as num).toInt(),
      ceo: json['ceo'] as String,
      summary: json['summary'] as String,
    );


Headquarters _$HeadquartersFromJson(Map<String, dynamic> json) => Headquarters(
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
    );


Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      website: json['website'] as String,
      flickr: json['flickr'] as String,
      twitter: json['twitter'] as String,
      elonTwitter: json['elonTwitter'] as String,
    );

