// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_field_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactFieldRequestData _$ContactFieldRequestDataFromJson(
    Map<String, dynamic> json) {
  return _ContactFieldRequestData.fromJson(json);
}

/// @nodoc
class _$ContactFieldRequestDataTearOff {
  const _$ContactFieldRequestDataTearOff();

  _ContactFieldRequestData call(
      {required String applicationFieldId, required dynamic value}) {
    return _ContactFieldRequestData(
      applicationFieldId: applicationFieldId,
      value: value,
    );
  }

  ContactFieldRequestData fromJson(Map<String, Object?> json) {
    return ContactFieldRequestData.fromJson(json);
  }
}

/// @nodoc
const $ContactFieldRequestData = _$ContactFieldRequestDataTearOff();

/// @nodoc
mixin _$ContactFieldRequestData {
  String get applicationFieldId => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactFieldRequestDataCopyWith<ContactFieldRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactFieldRequestDataCopyWith<$Res> {
  factory $ContactFieldRequestDataCopyWith(ContactFieldRequestData value,
          $Res Function(ContactFieldRequestData) then) =
      _$ContactFieldRequestDataCopyWithImpl<$Res>;
  $Res call({String applicationFieldId, dynamic value});
}

/// @nodoc
class _$ContactFieldRequestDataCopyWithImpl<$Res>
    implements $ContactFieldRequestDataCopyWith<$Res> {
  _$ContactFieldRequestDataCopyWithImpl(this._value, this._then);

  final ContactFieldRequestData _value;
  // ignore: unused_field
  final $Res Function(ContactFieldRequestData) _then;

  @override
  $Res call({
    Object? applicationFieldId = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      applicationFieldId: applicationFieldId == freezed
          ? _value.applicationFieldId
          : applicationFieldId // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ContactFieldRequestDataCopyWith<$Res>
    implements $ContactFieldRequestDataCopyWith<$Res> {
  factory _$ContactFieldRequestDataCopyWith(_ContactFieldRequestData value,
          $Res Function(_ContactFieldRequestData) then) =
      __$ContactFieldRequestDataCopyWithImpl<$Res>;
  @override
  $Res call({String applicationFieldId, dynamic value});
}

/// @nodoc
class __$ContactFieldRequestDataCopyWithImpl<$Res>
    extends _$ContactFieldRequestDataCopyWithImpl<$Res>
    implements _$ContactFieldRequestDataCopyWith<$Res> {
  __$ContactFieldRequestDataCopyWithImpl(_ContactFieldRequestData _value,
      $Res Function(_ContactFieldRequestData) _then)
      : super(_value, (v) => _then(v as _ContactFieldRequestData));

  @override
  _ContactFieldRequestData get _value =>
      super._value as _ContactFieldRequestData;

  @override
  $Res call({
    Object? applicationFieldId = freezed,
    Object? value = freezed,
  }) {
    return _then(_ContactFieldRequestData(
      applicationFieldId: applicationFieldId == freezed
          ? _value.applicationFieldId
          : applicationFieldId // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactFieldRequestData implements _ContactFieldRequestData {
  _$_ContactFieldRequestData(
      {required this.applicationFieldId, required this.value});

  factory _$_ContactFieldRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFieldRequestDataFromJson(json);

  @override
  final String applicationFieldId;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'ContactFieldRequestData(applicationFieldId: $applicationFieldId, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactFieldRequestData &&
            (identical(other.applicationFieldId, applicationFieldId) ||
                other.applicationFieldId == applicationFieldId) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, applicationFieldId,
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ContactFieldRequestDataCopyWith<_ContactFieldRequestData> get copyWith =>
      __$ContactFieldRequestDataCopyWithImpl<_ContactFieldRequestData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactFieldRequestDataToJson(this);
  }
}

abstract class _ContactFieldRequestData implements ContactFieldRequestData {
  factory _ContactFieldRequestData(
      {required String applicationFieldId,
      required dynamic value}) = _$_ContactFieldRequestData;

  factory _ContactFieldRequestData.fromJson(Map<String, dynamic> json) =
      _$_ContactFieldRequestData.fromJson;

  @override
  String get applicationFieldId;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$ContactFieldRequestDataCopyWith<_ContactFieldRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}
