// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationField _$$_ApplicationFieldFromJson(Map<String, dynamic> json) =>
    _$_ApplicationField(
      id: json['id'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      isRequired: json['isRequired'] as bool,
      placeholder: json['placeholder'] as String,
    );

Map<String, dynamic> _$$_ApplicationFieldToJson(_$_ApplicationField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'type': instance.type,
      'isRequired': instance.isRequired,
      'placeholder': instance.placeholder,
    };
