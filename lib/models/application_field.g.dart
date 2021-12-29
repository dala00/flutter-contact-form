// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationField _$$_ApplicationFieldFromJson(Map<String, dynamic> json) =>
    _$_ApplicationField(
      id: json['id'] as String,
      label: json['label'] as String,
      localeLabels: (json['localeLabels'] as List<dynamic>)
          .map((e) => LocaleText.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      isRequired: json['isRequired'] as bool,
      placeholder: json['placeholder'] as String,
      selects: (json['selects'] as List<dynamic>)
          .map(
              (e) => ApplicationFieldSelect.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ApplicationFieldToJson(_$_ApplicationField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'localeLabels': instance.localeLabels,
      'type': instance.type,
      'isRequired': instance.isRequired,
      'placeholder': instance.placeholder,
      'selects': instance.selects,
    };
