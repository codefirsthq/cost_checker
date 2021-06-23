// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'province_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProvinceResponseDataModel _$ProvinceResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _ProvinceResponseDataModel.fromJson(json);
}

/// @nodoc
class _$ProvinceResponseDataModelTearOff {
  const _$ProvinceResponseDataModelTearOff();

  _ProvinceResponseDataModel call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<ProvinceDataModel>? results}) {
    return _ProvinceResponseDataModel(
      status: status,
      results: results,
    );
  }

  ProvinceResponseDataModel fromJson(Map<String, Object> json) {
    return ProvinceResponseDataModel.fromJson(json);
  }
}

/// @nodoc
const $ProvinceResponseDataModel = _$ProvinceResponseDataModelTearOff();

/// @nodoc
mixin _$ProvinceResponseDataModel {
  @JsonKey(name: "status")
  StatusDataModel? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<ProvinceDataModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceResponseDataModelCopyWith<ProvinceResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceResponseDataModelCopyWith<$Res> {
  factory $ProvinceResponseDataModelCopyWith(ProvinceResponseDataModel value,
          $Res Function(ProvinceResponseDataModel) then) =
      _$ProvinceResponseDataModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<ProvinceDataModel>? results});

  $StatusDataModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ProvinceResponseDataModelCopyWithImpl<$Res>
    implements $ProvinceResponseDataModelCopyWith<$Res> {
  _$ProvinceResponseDataModelCopyWithImpl(this._value, this._then);

  final ProvinceResponseDataModel _value;
  // ignore: unused_field
  final $Res Function(ProvinceResponseDataModel) _then;

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
              as List<ProvinceDataModel>?,
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
abstract class _$ProvinceResponseDataModelCopyWith<$Res>
    implements $ProvinceResponseDataModelCopyWith<$Res> {
  factory _$ProvinceResponseDataModelCopyWith(_ProvinceResponseDataModel value,
          $Res Function(_ProvinceResponseDataModel) then) =
      __$ProvinceResponseDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "status") StatusDataModel? status,
      @JsonKey(name: "results") List<ProvinceDataModel>? results});

  @override
  $StatusDataModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$ProvinceResponseDataModelCopyWithImpl<$Res>
    extends _$ProvinceResponseDataModelCopyWithImpl<$Res>
    implements _$ProvinceResponseDataModelCopyWith<$Res> {
  __$ProvinceResponseDataModelCopyWithImpl(_ProvinceResponseDataModel _value,
      $Res Function(_ProvinceResponseDataModel) _then)
      : super(_value, (v) => _then(v as _ProvinceResponseDataModel));

  @override
  _ProvinceResponseDataModel get _value =>
      super._value as _ProvinceResponseDataModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? results = freezed,
  }) {
    return _then(_ProvinceResponseDataModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDataModel?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ProvinceDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProvinceResponseDataModel implements _ProvinceResponseDataModel {
  _$_ProvinceResponseDataModel(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "results") this.results});

  factory _$_ProvinceResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProvinceResponseDataModelFromJson(json);

  @override
  @JsonKey(name: "status")
  final StatusDataModel? status;
  @override
  @JsonKey(name: "results")
  final List<ProvinceDataModel>? results;

  @override
  String toString() {
    return 'ProvinceResponseDataModel(status: $status, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvinceResponseDataModel &&
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
  _$ProvinceResponseDataModelCopyWith<_ProvinceResponseDataModel>
      get copyWith =>
          __$ProvinceResponseDataModelCopyWithImpl<_ProvinceResponseDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProvinceResponseDataModelToJson(this);
  }
}

abstract class _ProvinceResponseDataModel implements ProvinceResponseDataModel {
  factory _ProvinceResponseDataModel(
          {@JsonKey(name: "status") StatusDataModel? status,
          @JsonKey(name: "results") List<ProvinceDataModel>? results}) =
      _$_ProvinceResponseDataModel;

  factory _ProvinceResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProvinceResponseDataModel.fromJson;

  @override
  @JsonKey(name: "status")
  StatusDataModel? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "results")
  List<ProvinceDataModel>? get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceResponseDataModelCopyWith<_ProvinceResponseDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
