// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactRequestData _$$_ContactRequestDataFromJson(
        Map<String, dynamic> json) =>
    _$_ContactRequestData(
      platform: json['platform'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) =>
              ContactFieldRequestData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactRequestDataToJson(
        _$_ContactRequestData instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'fields': instance.fields,
    };
