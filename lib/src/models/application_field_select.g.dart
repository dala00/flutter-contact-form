// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_field_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationFieldSelect _$$_ApplicationFieldSelectFromJson(
        Map<String, dynamic> json) =>
    _$_ApplicationFieldSelect(
      id: json['id'] as String,
      name: json['name'] as String,
      localeNames: (json['localeNames'] as List<dynamic>)
          .map((e) => LocaleText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApplicationFieldSelectToJson(
        _$_ApplicationFieldSelect instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'localeNames': instance.localeNames,
    };
