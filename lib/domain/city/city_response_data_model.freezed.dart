// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'city_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityResponseDataModel _$CityResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _CityResponseDataModel.fromJson(json);
}

/// @nodoc
class _$CityResponseDataModelTearOff {
  const _$CityResponseDataModelTearOff();

  _CityResponseDataModel call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<CityDataModel>? results}) {
    return _CityResponseDataModel(
      status: status,
      results: results,
    );
  }

  CityResponseDataModel fromJson(Map<String, Object> json) {
    return CityResponseDataModel.fromJson(json);
  }
}

/// @nodoc
const $CityResponseDataModel = _$CityResponseDataModelTearOff();

/// @nodoc
mixin _$CityResponseDataModel {
  @JsonKey(name: "status")
  StatusDataModel? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<CityDataModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityResponseDataModelCopyWith<CityResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityResponseDataModelCopyWith<$Res> {
  factory $CityResponseDataModelCopyWith(CityResponseDataModel value,
          $Res Function(CityResponseDataModel) then) =
      _$CityResponseDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<CityDataModel>? results});

  $StatusDataModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$CityResponseDataModelCopyWithImpl<$Res>
    implements $CityResponseDataModelCopyWith<$Res> {
  _$CityResponseDataModelCopyWithImpl(this._value, this._then);

  final CityResponseDataModel _value;
  // ignore: unused_field
  final $Res Function(CityResponseDataModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CityDataModel>?,
    ));
  }

  @override
  $StatusDataModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusDataModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$CityResponseDataModelCopyWith<$Res>
    implements $CityResponseDataModelCopyWith<$Res> {
  factory _$CityResponseDataModelCopyWith(_CityResponseDataModel value,
          $Res Function(_CityResponseDataModel) then) =
      __$CityResponseDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<CityDataModel>? results});

  @override
  $StatusDataModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$CityResponseDataModelCopyWithImpl<$Res>
    extends _$CityResponseDataModelCopyWithImpl<$Res>
    implements _$CityResponseDataModelCopyWith<$Res> {
  __$CityResponseDataModelCopyWithImpl(_CityResponseDataModel _value,
      $Res Function(_CityResponseDataModel) _then)
      : super(_value, (v) => _then(v as _CityResponseDataModel));

  @override
  _CityResponseDataModel get _value => super._value as _CityResponseDataModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_CityResponseDataModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CityDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityResponseDataModel implements _CityResponseDataModel {
  _$_CityResponseDataModel(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "results") this.results});

  factory _$_CityResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CityResponseDataModelFromJson(json);

  @override
  @JsonKey(name: "status")
  final StatusDataModel? status;
  @override
  @JsonKey(name: "results")
  final List<CityDataModel>? results;

  @override
  String toString() {
    return 'CityResponseDataModel(status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CityResponseDataModel &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$CityResponseDataModelCopyWith<_CityResponseDataModel> get copyWith =>
      __$CityResponseDataModelCopyWithImpl<_CityResponseDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CityResponseDataModelToJson(this);
  }
}

abstract class _CityResponseDataModel implements CityResponseDataModel {
  factory _CityResponseDataModel(
          {@JsonKey(name: "status") StatusDataModel? status,
          @JsonKey(name: "results") List<CityDataModel>? results}) =
      _$_CityResponseDataModel;

  factory _CityResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$_CityResponseDataModel.fromJson;

  @override
  @JsonKey(name: "status")
  StatusDataModel? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "results")
  List<CityDataModel>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CityResponseDataModelCopyWith<_CityResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
