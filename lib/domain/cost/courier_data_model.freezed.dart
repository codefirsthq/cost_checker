// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'courier_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourierDataModel _$CourierDataModelFromJson(Map<String, dynamic> json) {
  return _CourierDataModel.fromJson(json);
}

/// @nodoc
class _$CourierDataModelTearOff {
  const _$CourierDataModelTearOff();

  _CourierDataModel call(
      {String code = "",
      String name = "",
      List<ServiceDataModel> costs = const []}) {
    return _CourierDataModel(
      code: code,
      name: name,
      costs: costs,
    );
  }

  CourierDataModel fromJson(Map<String, Object> json) {
    return CourierDataModel.fromJson(json);
  }
}

/// @nodoc
const $CourierDataModel = _$CourierDataModelTearOff();

/// @nodoc
mixin _$CourierDataModel {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ServiceDataModel> get costs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourierDataModelCopyWith<CourierDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourierDataModelCopyWith<$Res> {
  factory $CourierDataModelCopyWith(
          CourierDataModel value, $Res Function(CourierDataModel) then) =
      _$CourierDataModelCopyWithImpl<$Res>;
  $Res call({String code, String name, List<ServiceDataModel> costs});
}

/// @nodoc
class _$CourierDataModelCopyWithImpl<$Res>
    implements $CourierDataModelCopyWith<$Res> {
  _$CourierDataModelCopyWithImpl(this._value, this._then);

  final CourierDataModel _value;
  // ignore: unused_field
  final $Res Function(CourierDataModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<ServiceDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$CourierDataModelCopyWith<$Res>
    implements $CourierDataModelCopyWith<$Res> {
  factory _$CourierDataModelCopyWith(
          _CourierDataModel value, $Res Function(_CourierDataModel) then) =
      __$CourierDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name, List<ServiceDataModel> costs});
}

/// @nodoc
class __$CourierDataModelCopyWithImpl<$Res>
    extends _$CourierDataModelCopyWithImpl<$Res>
    implements _$CourierDataModelCopyWith<$Res> {
  __$CourierDataModelCopyWithImpl(
      _CourierDataModel _value, $Res Function(_CourierDataModel) _then)
      : super(_value, (v) => _then(v as _CourierDataModel));

  @override
  _CourierDataModel get _value => super._value as _CourierDataModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? costs = freezed,
  }) {
    return _then(_CourierDataModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      costs: costs == freezed
          ? _value.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<ServiceDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourierDataModel implements _CourierDataModel {
  _$_CourierDataModel({this.code = "", this.name = "", this.costs = const []});

  factory _$_CourierDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CourierDataModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String code;
  @JsonKey(defaultValue: "")
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<ServiceDataModel> costs;

  @override
  String toString() {
    return 'CourierDataModel(code: $code, name: $name, costs: $costs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourierDataModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.costs, costs) ||
                const DeepCollectionEquality().equals(other.costs, costs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(costs);

  @JsonKey(ignore: true)
  @override
  _$CourierDataModelCopyWith<_CourierDataModel> get copyWith =>
      __$CourierDataModelCopyWithImpl<_CourierDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CourierDataModelToJson(this);
  }
}

abstract class _CourierDataModel implements CourierDataModel {
  factory _CourierDataModel(
      {String code,
      String name,
      List<ServiceDataModel> costs}) = _$_CourierDataModel;

  factory _CourierDataModel.fromJson(Map<String, dynamic> json) =
      _$_CourierDataModel.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<ServiceDataModel> get costs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourierDataModelCopyWith<_CourierDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
