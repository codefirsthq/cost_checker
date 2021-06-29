// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceDataModel _$ServiceDataModelFromJson(Map<String, dynamic> json) {
  return _ServiceDataModel.fromJson(json);
}

/// @nodoc
class _$ServiceDataModelTearOff {
  const _$ServiceDataModelTearOff();

  _ServiceDataModel call(
      {String service = "",
      String description = "",
      List<ServiceCostDataModel> cost = const []}) {
    return _ServiceDataModel(
      service: service,
      description: description,
      cost: cost,
    );
  }

  ServiceDataModel fromJson(Map<String, Object> json) {
    return ServiceDataModel.fromJson(json);
  }
}

/// @nodoc
const $ServiceDataModel = _$ServiceDataModelTearOff();

/// @nodoc
mixin _$ServiceDataModel {
  String get service => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ServiceCostDataModel> get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDataModelCopyWith<ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDataModelCopyWith<$Res> {
  factory $ServiceDataModelCopyWith(
          ServiceDataModel value, $Res Function(ServiceDataModel) then) =
      _$ServiceDataModelCopyWithImpl<$Res>;
  $Res call(
      {String service, String description, List<ServiceCostDataModel> cost});
}

/// @nodoc
class _$ServiceDataModelCopyWithImpl<$Res>
    implements $ServiceDataModelCopyWith<$Res> {
  _$ServiceDataModelCopyWithImpl(this._value, this._then);

  final ServiceDataModel _value;
  // ignore: unused_field
  final $Res Function(ServiceDataModel) _then;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<ServiceCostDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$ServiceDataModelCopyWith<$Res>
    implements $ServiceDataModelCopyWith<$Res> {
  factory _$ServiceDataModelCopyWith(
          _ServiceDataModel value, $Res Function(_ServiceDataModel) then) =
      __$ServiceDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String service, String description, List<ServiceCostDataModel> cost});
}

/// @nodoc
class __$ServiceDataModelCopyWithImpl<$Res>
    extends _$ServiceDataModelCopyWithImpl<$Res>
    implements _$ServiceDataModelCopyWith<$Res> {
  __$ServiceDataModelCopyWithImpl(
      _ServiceDataModel _value, $Res Function(_ServiceDataModel) _then)
      : super(_value, (v) => _then(v as _ServiceDataModel));

  @override
  _ServiceDataModel get _value => super._value as _ServiceDataModel;

  @override
  $Res call({
    Object? service = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_ServiceDataModel(
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as List<ServiceCostDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceDataModel implements _ServiceDataModel {
  _$_ServiceDataModel(
      {this.service = "", this.description = "", this.cost = const []});

  factory _$_ServiceDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceDataModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String service;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: const [])
  @override
  final List<ServiceCostDataModel> cost;

  @override
  String toString() {
    return 'ServiceDataModel(service: $service, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceDataModel &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(cost);

  @JsonKey(ignore: true)
  @override
  _$ServiceDataModelCopyWith<_ServiceDataModel> get copyWith =>
      __$ServiceDataModelCopyWithImpl<_ServiceDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceDataModelToJson(this);
  }
}

abstract class _ServiceDataModel implements ServiceDataModel {
  factory _ServiceDataModel(
      {String service,
      String description,
      List<ServiceCostDataModel> cost}) = _$_ServiceDataModel;

  factory _ServiceDataModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceDataModel.fromJson;

  @override
  String get service => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<ServiceCostDataModel> get cost => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceDataModelCopyWith<_ServiceDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
