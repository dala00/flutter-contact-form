import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_field.freezed.dart';
part 'application_field.g.dart';

@freezed
class ApplicationField with _$ApplicationField {
  factory ApplicationField({
    required String id,
    required String label,
    required String type,
    required bool isRequired,
    required String placeholder,
  }) = _ApplicationField;

  factory ApplicationField.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFieldFromJson(json);
}
