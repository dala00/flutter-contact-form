import 'package:contact_form/models/application_field_select.dart';
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
    required List<ApplicationFieldSelect> selects,
  }) = _ApplicationField;

  factory ApplicationField.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFieldFromJson(json);
}
