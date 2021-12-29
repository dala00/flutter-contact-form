import 'package:freezed_annotation/freezed_annotation.dart';

part 'locale_text.freezed.dart';
part 'locale_text.g.dart';

@freezed
class LocaleText with _$LocaleText {
  factory LocaleText({
    required String locale,
    required String text,
  }) = _LocaleText;

  factory LocaleText.fromJson(Map<String, dynamic> json) =>
      _$LocaleTextFromJson(json);
}
