// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_cost_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceCostDataModel _$ServiceCostDataModelFromJson(Map<String, dynamic> json) {
  return _ServiceCostDataModel.fromJson(json);
}

/// @nodoc
class _$ServiceCostDataModelTearOff {
  const _$ServiceCostDataModelTearOff();

  _ServiceCostDataModel call(
      {int value = 0, String etd = "", String note = ""}) {
    return _ServiceCostDataModel(
      value: value,
      etd: etd,
      note: note,
    );
  }

  ServiceCostDataModel fromJson(Map<String, Object> json) {
    return ServiceCostDataModel.fromJson(json);
  }
}

/// @nodoc
const $ServiceCostDataModel = _$ServiceCostDataModelTearOff();

/// @nodoc
mixin _$ServiceCostDataModel {
  int get value => throw _privateConstructorUsedError;
  String get etd => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceCostDataModelCopyWith<ServiceCostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCostDataModelCopyWith<$Res> {
  factory $ServiceCostDataModelCopyWith(ServiceCostDataModel value,
          $Res Function(ServiceCostDataModel) then) =
      _$ServiceCostDataModelCopyWithImpl<$Res>;
  $Res call({int value, String etd, String note});
}

/// @nodoc
class _$ServiceCostDataModelCopyWithImpl<$Res>
    implements $ServiceCostDataModelCopyWith<$Res> {
  _$ServiceCostDataModelCopyWithImpl(this._value, this._then);

  final ServiceCostDataModel _value;
  // ignore: unused_field
  final $Res Function(ServiceCostDataModel) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServiceCostDataModelCopyWith<$Res>
    implements $ServiceCostDataModelCopyWith<$Res> {
  factory _$ServiceCostDataModelCopyWith(_ServiceCostDataModel value,
          $Res Function(_ServiceCostDataModel) then) =
      __$ServiceCostDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int value, String etd, String note});
}

/// @nodoc
class __$ServiceCostDataModelCopyWithImpl<$Res>
    extends _$ServiceCostDataModelCopyWithImpl<$Res>
    implements _$ServiceCostDataModelCopyWith<$Res> {
  __$ServiceCostDataModelCopyWithImpl(
      _ServiceCostDataModel _value, $Res Function(_ServiceCostDataModel) _then)
      : super(_value, (v) => _then(v as _ServiceCostDataModel));

  @override
  _ServiceCostDataModel get _value => super._value as _ServiceCostDataModel;

  @override
  $Res call({
    Object? value = freezed,
    Object? etd = freezed,
    Object? note = freezed,
  }) {
    return _then(_ServiceCostDataModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceCostDataModel implements _ServiceCostDataModel {
  _$_ServiceCostDataModel({this.value = 0, this.etd = "", this.note = ""});

  factory _$_ServiceCostDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ServiceCostDataModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int value;
  @JsonKey(defaultValue: "")
  @override
  final String etd;
  @JsonKey(defaultValue: "")
  @override
  final String note;

  @override
  String toString() {
    return 'ServiceCostDataModel(value: $value, etd: $etd, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServiceCostDataModel &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.etd, etd) ||
                const DeepCollectionEquality().equals(other.etd, etd)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(etd) ^
      const DeepCollectionEquality().hash(note);

  @JsonKey(ignore: true)
  @override
  _$ServiceCostDataModelCopyWith<_ServiceCostDataModel> get copyWith =>
      __$ServiceCostDataModelCopyWithImpl<_ServiceCostDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServiceCostDataModelToJson(this);
  }
}

abstract class _ServiceCostDataModel implements ServiceCostDataModel {
  factory _ServiceCostDataModel({int value, String etd, String note}) =
      _$_ServiceCostDataModel;

  factory _ServiceCostDataModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceCostDataModel.fromJson;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  String get etd => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServiceCostDataModelCopyWith<_ServiceCostDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
