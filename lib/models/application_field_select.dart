import 'package:contact_form/models/locale_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_field_select.freezed.dart';
part 'application_field_select.g.dart';

@freezed
class ApplicationFieldSelect with _$ApplicationFieldSelect {
  factory ApplicationFieldSelect({
    required String id,
    required String name,
    required List<LocaleText> localeNames,
  }) = _ApplicationFieldSelect;

  factory ApplicationFieldSelect.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFieldSelectFromJson(json);
}
