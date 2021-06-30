// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'courier_detail_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourierDetailDataModel _$CourierDetailDataModelFromJson(
    Map<String, dynamic> json) {
  return _CourierDetailDataModel.fromJson(json);
}

/// @nodoc
class _$CourierDetailDataModelTearOff {
  const _$CourierDetailDataModelTearOff();

  _CourierDetailDataModel call(
      {required String name, required String description}) {
    return _CourierDetailDataModel(
      name: name,
      description: description,
    );
  }

  CourierDetailDataModel fromJson(Map<String, Object> json) {
    return CourierDetailDataModel.fromJson(json);
  }
}

/// @nodoc
const $CourierDetailDataModel = _$CourierDetailDataModelTearOff();

/// @nodoc
mixin _$CourierDetailDataModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourierDetailDataModelCopyWith<CourierDetailDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourierDetailDataModelCopyWith<$Res> {
  factory $CourierDetailDataModelCopyWith(CourierDetailDataModel value,
          $Res Function(CourierDetailDataModel) then) =
      _$CourierDetailDataModelCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$CourierDetailDataModelCopyWithImpl<$Res>
    implements $CourierDetailDataModelCopyWith<$Res> {
  _$CourierDetailDataModelCopyWithImpl(this._value, this._then);

  final CourierDetailDataModel _value;
  // ignore: unused_field
  final $Res Function(CourierDetailDataModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CourierDetailDataModelCopyWith<$Res>
    implements $CourierDetailDataModelCopyWith<$Res> {
  factory _$CourierDetailDataModelCopyWith(_CourierDetailDataModel value,
          $Res Function(_CourierDetailDataModel) then) =
      __$CourierDetailDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$CourierDetailDataModelCopyWithImpl<$Res>
    extends _$CourierDetailDataModelCopyWithImpl<$Res>
    implements _$CourierDetailDataModelCopyWith<$Res> {
  __$CourierDetailDataModelCopyWithImpl(_CourierDetailDataModel _value,
      $Res Function(_CourierDetailDataModel) _then)
      : super(_value, (v) => _then(v as _CourierDetailDataModel));

  @override
  _CourierDetailDataModel get _value => super._value as _CourierDetailDataModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_CourierDetailDataModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourierDetailDataModel implements _CourierDetailDataModel {
  _$_CourierDetailDataModel({required this.name, required this.description});

  factory _$_CourierDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CourierDetailDataModelFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'CourierDetailDataModel(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourierDetailDataModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$CourierDetailDataModelCopyWith<_CourierDetailDataModel> get copyWith =>
      __$CourierDetailDataModelCopyWithImpl<_CourierDetailDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CourierDetailDataModelToJson(this);
  }
}

abstract class _CourierDetailDataModel implements CourierDetailDataModel {
  factory _CourierDetailDataModel(
      {required String name,
      required String description}) = _$_CourierDetailDataModel;

  factory _CourierDetailDataModel.fromJson(Map<String, dynamic> json) =
      _$_CourierDetailDataModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourierDetailDataModelCopyWith<_CourierDetailDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
