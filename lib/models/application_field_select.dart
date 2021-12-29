import 'package:contact_form/models/locale_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_field_select.freezed.dart';
part 'application_field_select.g.dart';

@freezed
class ApplicationFieldSelect with _$ApplicationFieldSelect {
  const ApplicationFieldSelect._();
  factory ApplicationFieldSelect({
    required String id,
    required String name,
    required List<LocaleText> localeNames,
  }) = _ApplicationFieldSelect;

  factory ApplicationFieldSelect.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFieldSelectFromJson(json);

  String getName(String locale) {
    return localeNames
        .firstWhere((l) => l.locale == locale,
            orElse: () => LocaleText(locale: locale, text: name))
        .text;
  }
}
