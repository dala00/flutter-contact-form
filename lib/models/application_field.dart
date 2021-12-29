import 'package:contact_form/models/application_field_select.dart';
import 'package:contact_form/models/locale_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_field.freezed.dart';
part 'application_field.g.dart';

@freezed
class ApplicationField with _$ApplicationField {
  const ApplicationField._();
  factory ApplicationField({
    required String id,
    required String label,
    required List<LocaleText> localeLabels,
    required String type,
    required bool isRequired,
    required String placeholder,
    required List<ApplicationFieldSelect> selects,
  }) = _ApplicationField;

  factory ApplicationField.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFieldFromJson(json);

  String getLabel(String locale) {
    return localeLabels
        .firstWhere((l) => l.locale == locale,
            orElse: () => LocaleText(locale: locale, text: label))
        .text;
  }
}
