// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocaleText _$LocaleTextFromJson(Map<String, dynamic> json) {
  return _LocaleText.fromJson(json);
}

/// @nodoc
class _$LocaleTextTearOff {
  const _$LocaleTextTearOff();

  _LocaleText call({required String locale, required String text}) {
    return _LocaleText(
      locale: locale,
      text: text,
    );
  }

  LocaleText fromJson(Map<String, Object?> json) {
    return LocaleText.fromJson(json);
  }
}

/// @nodoc
const $LocaleText = _$LocaleTextTearOff();

/// @nodoc
mixin _$LocaleText {
  String get locale => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleTextCopyWith<LocaleText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleTextCopyWith<$Res> {
  factory $LocaleTextCopyWith(
          LocaleText value, $Res Function(LocaleText) then) =
      _$LocaleTextCopyWithImpl<$Res>;
  $Res call({String locale, String text});
}

/// @nodoc
class _$LocaleTextCopyWithImpl<$Res> implements $LocaleTextCopyWith<$Res> {
  _$LocaleTextCopyWithImpl(this._value, this._then);

  final LocaleText _value;
  // ignore: unused_field
  final $Res Function(LocaleText) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocaleTextCopyWith<$Res> implements $LocaleTextCopyWith<$Res> {
  factory _$LocaleTextCopyWith(
          _LocaleText value, $Res Function(_LocaleText) then) =
      __$LocaleTextCopyWithImpl<$Res>;
  @override
  $Res call({String locale, String text});
}

/// @nodoc
class __$LocaleTextCopyWithImpl<$Res> extends _$LocaleTextCopyWithImpl<$Res>
    implements _$LocaleTextCopyWith<$Res> {
  __$LocaleTextCopyWithImpl(
      _LocaleText _value, $Res Function(_LocaleText) _then)
      : super(_value, (v) => _then(v as _LocaleText));

  @override
  _LocaleText get _value => super._value as _LocaleText;

  @override
  $Res call({
    Object? locale = freezed,
    Object? text = freezed,
  }) {
    return _then(_LocaleText(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocaleText implements _LocaleText {
  _$_LocaleText({required this.locale, required this.text});

  factory _$_LocaleText.fromJson(Map<String, dynamic> json) =>
      _$$_LocaleTextFromJson(json);

  @override
  final String locale;
  @override
  final String text;

  @override
  String toString() {
    return 'LocaleText(locale: $locale, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocaleText &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale, text);

  @JsonKey(ignore: true)
  @override
  _$LocaleTextCopyWith<_LocaleText> get copyWith =>
      __$LocaleTextCopyWithImpl<_LocaleText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocaleTextToJson(this);
  }
}

abstract class _LocaleText implements LocaleText {
  factory _LocaleText({required String locale, required String text}) =
      _$_LocaleText;

  factory _LocaleText.fromJson(Map<String, dynamic> json) =
      _$_LocaleText.fromJson;

  @override
  String get locale;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$LocaleTextCopyWith<_LocaleText> get copyWith =>
      throw _privateConstructorUsedError;
}
