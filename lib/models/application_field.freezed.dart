// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationField _$ApplicationFieldFromJson(Map<String, dynamic> json) {
  return _ApplicationField.fromJson(json);
}

/// @nodoc
class _$ApplicationFieldTearOff {
  const _$ApplicationFieldTearOff();

  _ApplicationField call(
      {required String id,
      required String label,
      required String type,
      required bool isRequired,
      required String placeholder,
      required List<ApplicationFieldSelect> selects}) {
    return _ApplicationField(
      id: id,
      label: label,
      type: type,
      isRequired: isRequired,
      placeholder: placeholder,
      selects: selects,
    );
  }

  ApplicationField fromJson(Map<String, Object?> json) {
    return ApplicationField.fromJson(json);
  }
}

/// @nodoc
const $ApplicationField = _$ApplicationFieldTearOff();

/// @nodoc
mixin _$ApplicationField {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  String get placeholder => throw _privateConstructorUsedError;
  List<ApplicationFieldSelect> get selects =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationFieldCopyWith<ApplicationField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationFieldCopyWith<$Res> {
  factory $ApplicationFieldCopyWith(
          ApplicationField value, $Res Function(ApplicationField) then) =
      _$ApplicationFieldCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String label,
      String type,
      bool isRequired,
      String placeholder,
      List<ApplicationFieldSelect> selects});
}

/// @nodoc
class _$ApplicationFieldCopyWithImpl<$Res>
    implements $ApplicationFieldCopyWith<$Res> {
  _$ApplicationFieldCopyWithImpl(this._value, this._then);

  final ApplicationField _value;
  // ignore: unused_field
  final $Res Function(ApplicationField) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? type = freezed,
    Object? isRequired = freezed,
    Object? placeholder = freezed,
    Object? selects = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: isRequired == freezed
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      placeholder: placeholder == freezed
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      selects: selects == freezed
          ? _value.selects
          : selects // ignore: cast_nullable_to_non_nullable
              as List<ApplicationFieldSelect>,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationFieldCopyWith<$Res>
    implements $ApplicationFieldCopyWith<$Res> {
  factory _$ApplicationFieldCopyWith(
          _ApplicationField value, $Res Function(_ApplicationField) then) =
      __$ApplicationFieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String label,
      String type,
      bool isRequired,
      String placeholder,
      List<ApplicationFieldSelect> selects});
}

/// @nodoc
class __$ApplicationFieldCopyWithImpl<$Res>
    extends _$ApplicationFieldCopyWithImpl<$Res>
    implements _$ApplicationFieldCopyWith<$Res> {
  __$ApplicationFieldCopyWithImpl(
      _ApplicationField _value, $Res Function(_ApplicationField) _then)
      : super(_value, (v) => _then(v as _ApplicationField));

  @override
  _ApplicationField get _value => super._value as _ApplicationField;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? type = freezed,
    Object? isRequired = freezed,
    Object? placeholder = freezed,
    Object? selects = freezed,
  }) {
    return _then(_ApplicationField(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: isRequired == freezed
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      placeholder: placeholder == freezed
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String,
      selects: selects == freezed
          ? _value.selects
          : selects // ignore: cast_nullable_to_non_nullable
              as List<ApplicationFieldSelect>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationField implements _ApplicationField {
  _$_ApplicationField(
      {required this.id,
      required this.label,
      required this.type,
      required this.isRequired,
      required this.placeholder,
      required this.selects});

  factory _$_ApplicationField.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicationFieldFromJson(json);

  @override
  final String id;
  @override
  final String label;
  @override
  final String type;
  @override
  final bool isRequired;
  @override
  final String placeholder;
  @override
  final List<ApplicationFieldSelect> selects;

  @override
  String toString() {
    return 'ApplicationField(id: $id, label: $label, type: $type, isRequired: $isRequired, placeholder: $placeholder, selects: $selects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApplicationField &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            const DeepCollectionEquality().equals(other.selects, selects));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, type, isRequired,
      placeholder, const DeepCollectionEquality().hash(selects));

  @JsonKey(ignore: true)
  @override
  _$ApplicationFieldCopyWith<_ApplicationField> get copyWith =>
      __$ApplicationFieldCopyWithImpl<_ApplicationField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicationFieldToJson(this);
  }
}

abstract class _ApplicationField implements ApplicationField {
  factory _ApplicationField(
      {required String id,
      required String label,
      required String type,
      required bool isRequired,
      required String placeholder,
      required List<ApplicationFieldSelect> selects}) = _$_ApplicationField;

  factory _ApplicationField.fromJson(Map<String, dynamic> json) =
      _$_ApplicationField.fromJson;

  @override
  String get id;
  @override
  String get label;
  @override
  String get type;
  @override
  bool get isRequired;
  @override
  String get placeholder;
  @override
  List<ApplicationFieldSelect> get selects;
  @override
  @JsonKey(ignore: true)
  _$ApplicationFieldCopyWith<_ApplicationField> get copyWith =>
      throw _privateConstructorUsedError;
}
