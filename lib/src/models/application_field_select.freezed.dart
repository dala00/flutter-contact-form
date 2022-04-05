// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_field_select.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationFieldSelect _$ApplicationFieldSelectFromJson(
    Map<String, dynamic> json) {
  return _ApplicationFieldSelect.fromJson(json);
}

/// @nodoc
class _$ApplicationFieldSelectTearOff {
  const _$ApplicationFieldSelectTearOff();

  _ApplicationFieldSelect call(
      {required String id,
      required String name,
      required List<LocaleText> localeNames}) {
    return _ApplicationFieldSelect(
      id: id,
      name: name,
      localeNames: localeNames,
    );
  }

  ApplicationFieldSelect fromJson(Map<String, Object?> json) {
    return ApplicationFieldSelect.fromJson(json);
  }
}

/// @nodoc
const $ApplicationFieldSelect = _$ApplicationFieldSelectTearOff();

/// @nodoc
mixin _$ApplicationFieldSelect {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<LocaleText> get localeNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationFieldSelectCopyWith<ApplicationFieldSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationFieldSelectCopyWith<$Res> {
  factory $ApplicationFieldSelectCopyWith(ApplicationFieldSelect value,
          $Res Function(ApplicationFieldSelect) then) =
      _$ApplicationFieldSelectCopyWithImpl<$Res>;
  $Res call({String id, String name, List<LocaleText> localeNames});
}

/// @nodoc
class _$ApplicationFieldSelectCopyWithImpl<$Res>
    implements $ApplicationFieldSelectCopyWith<$Res> {
  _$ApplicationFieldSelectCopyWithImpl(this._value, this._then);

  final ApplicationFieldSelect _value;
  // ignore: unused_field
  final $Res Function(ApplicationFieldSelect) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? localeNames = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localeNames: localeNames == freezed
          ? _value.localeNames
          : localeNames // ignore: cast_nullable_to_non_nullable
              as List<LocaleText>,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationFieldSelectCopyWith<$Res>
    implements $ApplicationFieldSelectCopyWith<$Res> {
  factory _$ApplicationFieldSelectCopyWith(_ApplicationFieldSelect value,
          $Res Function(_ApplicationFieldSelect) then) =
      __$ApplicationFieldSelectCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<LocaleText> localeNames});
}

/// @nodoc
class __$ApplicationFieldSelectCopyWithImpl<$Res>
    extends _$ApplicationFieldSelectCopyWithImpl<$Res>
    implements _$ApplicationFieldSelectCopyWith<$Res> {
  __$ApplicationFieldSelectCopyWithImpl(_ApplicationFieldSelect _value,
      $Res Function(_ApplicationFieldSelect) _then)
      : super(_value, (v) => _then(v as _ApplicationFieldSelect));

  @override
  _ApplicationFieldSelect get _value => super._value as _ApplicationFieldSelect;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? localeNames = freezed,
  }) {
    return _then(_ApplicationFieldSelect(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localeNames: localeNames == freezed
          ? _value.localeNames
          : localeNames // ignore: cast_nullable_to_non_nullable
              as List<LocaleText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationFieldSelect extends _ApplicationFieldSelect {
  _$_ApplicationFieldSelect(
      {required this.id, required this.name, required this.localeNames})
      : super._();

  factory _$_ApplicationFieldSelect.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicationFieldSelectFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<LocaleText> localeNames;

  @override
  String toString() {
    return 'ApplicationFieldSelect(id: $id, name: $name, localeNames: $localeNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplicationFieldSelect &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.localeNames, localeNames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(localeNames));

  @JsonKey(ignore: true)
  @override
  _$ApplicationFieldSelectCopyWith<_ApplicationFieldSelect> get copyWith =>
      __$ApplicationFieldSelectCopyWithImpl<_ApplicationFieldSelect>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicationFieldSelectToJson(this);
  }
}

abstract class _ApplicationFieldSelect extends ApplicationFieldSelect {
  factory _ApplicationFieldSelect(
      {required String id,
      required String name,
      required List<LocaleText> localeNames}) = _$_ApplicationFieldSelect;
  _ApplicationFieldSelect._() : super._();

  factory _ApplicationFieldSelect.fromJson(Map<String, dynamic> json) =
      _$_ApplicationFieldSelect.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<LocaleText> get localeNames;
  @override
  @JsonKey(ignore: true)
  _$ApplicationFieldSelectCopyWith<_ApplicationFieldSelect> get copyWith =>
      throw _privateConstructorUsedError;
}
