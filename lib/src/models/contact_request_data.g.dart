// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactRequestData _$$_ContactRequestDataFromJson(
        Map<String, dynamic> json) =>
    _$_ContactRequestData(
      platform: json['platform'] as String,
      osVersion: json['osVersion'] as String,
      version: json['version'] as String,
      buildNumber: json['buildNumber'] as String,
      locale: json['locale'] as String,
      metadata: json['metadata'] as String?,
      fields: (json['fields'] as List<dynamic>)
          .map((e) =>
              ContactFieldRequestData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactRequestDataToJson(
        _$_ContactRequestData instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'osVersion': instance.osVersion,
      'version': instance.version,
      'buildNumber': instance.buildNumber,
      'locale': instance.locale,
      'metadata': instance.metadata,
      'fields': instance.fields,
    };
