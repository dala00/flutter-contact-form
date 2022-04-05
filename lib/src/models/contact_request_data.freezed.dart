// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactRequestData _$ContactRequestDataFromJson(Map<String, dynamic> json) {
  return _ContactRequestData.fromJson(json);
}

/// @nodoc
class _$ContactRequestDataTearOff {
  const _$ContactRequestDataTearOff();

  _ContactRequestData call(
      {required String platform,
      required String version,
      required String buildNumber,
      required String locale,
      required List<ContactFieldRequestData> fields}) {
    return _ContactRequestData(
      platform: platform,
      version: version,
      buildNumber: buildNumber,
      locale: locale,
      fields: fields,
    );
  }

  ContactRequestData fromJson(Map<String, Object?> json) {
    return ContactRequestData.fromJson(json);
  }
}

/// @nodoc
const $ContactRequestData = _$ContactRequestDataTearOff();

/// @nodoc
mixin _$ContactRequestData {
  String get platform => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get buildNumber => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  List<ContactFieldRequestData> get fields =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactRequestDataCopyWith<ContactRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactRequestDataCopyWith<$Res> {
  factory $ContactRequestDataCopyWith(
          ContactRequestData value, $Res Function(ContactRequestData) then) =
      _$ContactRequestDataCopyWithImpl<$Res>;
  $Res call(
      {String platform,
      String version,
      String buildNumber,
      String locale,
      List<ContactFieldRequestData> fields});
}

/// @nodoc
class _$ContactRequestDataCopyWithImpl<$Res>
    implements $ContactRequestDataCopyWith<$Res> {
  _$ContactRequestDataCopyWithImpl(this._value, this._then);

  final ContactRequestData _value;
  // ignore: unused_field
  final $Res Function(ContactRequestData) _then;

  @override
  $Res call({
    Object? platform = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? locale = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<ContactFieldRequestData>,
    ));
  }
}

/// @nodoc
abstract class _$ContactRequestDataCopyWith<$Res>
    implements $ContactRequestDataCopyWith<$Res> {
  factory _$ContactRequestDataCopyWith(
          _ContactRequestData value, $Res Function(_ContactRequestData) then) =
      __$ContactRequestDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String platform,
      String version,
      String buildNumber,
      String locale,
      List<ContactFieldRequestData> fields});
}

/// @nodoc
class __$ContactRequestDataCopyWithImpl<$Res>
    extends _$ContactRequestDataCopyWithImpl<$Res>
    implements _$ContactRequestDataCopyWith<$Res> {
  __$ContactRequestDataCopyWithImpl(
      _ContactRequestData _value, $Res Function(_ContactRequestData) _then)
      : super(_value, (v) => _then(v as _ContactRequestData));

  @override
  _ContactRequestData get _value => super._value as _ContactRequestData;

  @override
  $Res call({
    Object? platform = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? locale = freezed,
    Object? fields = freezed,
  }) {
    return _then(_ContactRequestData(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      buildNumber: buildNumber == freezed
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String,
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<ContactFieldRequestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactRequestData implements _ContactRequestData {
  _$_ContactRequestData(
      {required this.platform,
      required this.version,
      required this.buildNumber,
      required this.locale,
      required this.fields});

  factory _$_ContactRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_ContactRequestDataFromJson(json);

  @override
  final String platform;
  @override
  final String version;
  @override
  final String buildNumber;
  @override
  final String locale;
  @override
  final List<ContactFieldRequestData> fields;

  @override
  String toString() {
    return 'ContactRequestData(platform: $platform, version: $version, buildNumber: $buildNumber, locale: $locale, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactRequestData &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform, version, buildNumber,
      locale, const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  _$ContactRequestDataCopyWith<_ContactRequestData> get copyWith =>
      __$ContactRequestDataCopyWithImpl<_ContactRequestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactRequestDataToJson(this);
  }
}

abstract class _ContactRequestData implements ContactRequestData {
  factory _ContactRequestData(
      {required String platform,
      required String version,
      required String buildNumber,
      required String locale,
      required List<ContactFieldRequestData> fields}) = _$_ContactRequestData;

  factory _ContactRequestData.fromJson(Map<String, dynamic> json) =
      _$_ContactRequestData.fromJson;

  @override
  String get platform;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  String get locale;
  @override
  List<ContactFieldRequestData> get fields;
  @override
  @JsonKey(ignore: true)
  _$ContactRequestDataCopyWith<_ContactRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
