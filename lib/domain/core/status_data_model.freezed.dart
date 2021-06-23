// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'status_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusDataModel _$StatusDataModelFromJson(Map<String, dynamic> json) {
  return _StatusDataModel.fromJson(json);
}

/// @nodoc
class _$StatusDataModelTearOff {
  const _$StatusDataModelTearOff();

  _StatusDataModel call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'description') String? description}) {
    return _StatusDataModel(
      code: code,
      description: description,
    );
  }

  StatusDataModel fromJson(Map<String, Object> json) {
    return StatusDataModel.fromJson(json);
  }
}

/// @nodoc
const $StatusDataModel = _$StatusDataModelTearOff();

/// @nodoc
mixin _$StatusDataModel {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusDataModelCopyWith<StatusDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDataModelCopyWith<$Res> {
  factory $StatusDataModelCopyWith(
          StatusDataModel value, $Res Function(StatusDataModel) then) =
      _$StatusDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$StatusDataModelCopyWithImpl<$Res>
    implements $StatusDataModelCopyWith<$Res> {
  _$StatusDataModelCopyWithImpl(this._value, this._then);

  final StatusDataModel _value;
  // ignore: unused_field
  final $Res Function(StatusDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StatusDataModelCopyWith<$Res>
    implements $StatusDataModelCopyWith<$Res> {
  factory _$StatusDataModelCopyWith(
          _StatusDataModel value, $Res Function(_StatusDataModel) then) =
      __$StatusDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$StatusDataModelCopyWithImpl<$Res>
    extends _$StatusDataModelCopyWithImpl<$Res>
    implements _$StatusDataModelCopyWith<$Res> {
  __$StatusDataModelCopyWithImpl(
      _StatusDataModel _value, $Res Function(_StatusDataModel) _then)
      : super(_value, (v) => _then(v as _StatusDataModel));

  @override
  _StatusDataModel get _value => super._value as _StatusDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_StatusDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusDataModel implements _StatusDataModel {
  _$_StatusDataModel(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'description') this.description});

  factory _$_StatusDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_StatusDataModelFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'StatusDataModel(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusDataModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$StatusDataModelCopyWith<_StatusDataModel> get copyWith =>
      __$StatusDataModelCopyWithImpl<_StatusDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatusDataModelToJson(this);
  }
}

abstract class _StatusDataModel implements StatusDataModel {
  factory _StatusDataModel(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'description') String? description}) = _$_StatusDataModel;

  factory _StatusDataModel.fromJson(Map<String, dynamic> json) =
      _$_StatusDataModel.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusDataModelCopyWith<_StatusDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
