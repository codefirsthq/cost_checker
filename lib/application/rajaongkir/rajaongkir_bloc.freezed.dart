// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rajaongkir_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RajaongkirEventTearOff {
  const _$RajaongkirEventTearOff();

  _Started started() {
    return const _Started();
  }

  _GetProvinceListData getProvinceListData() {
    return const _GetProvinceListData();
  }

  _GetCityByProvinceId getCityByProvinceId({required String provinceId}) {
    return _GetCityByProvinceId(
      provinceId: provinceId,
    );
  }
}

/// @nodoc
const $RajaongkirEvent = _$RajaongkirEventTearOff();

/// @nodoc
mixin _$RajaongkirEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProvinceListData,
    required TResult Function(String provinceId) getCityByProvinceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProvinceListData,
    TResult Function(String provinceId)? getCityByProvinceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProvinceListData value) getProvinceListData,
    required TResult Function(_GetCityByProvinceId value) getCityByProvinceId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProvinceListData value)? getProvinceListData,
    TResult Function(_GetCityByProvinceId value)? getCityByProvinceId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaongkirEventCopyWith<$Res> {
  factory $RajaongkirEventCopyWith(
          RajaongkirEvent value, $Res Function(RajaongkirEvent) then) =
      _$RajaongkirEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RajaongkirEventCopyWithImpl<$Res>
    implements $RajaongkirEventCopyWith<$Res> {
  _$RajaongkirEventCopyWithImpl(this._value, this._then);

  final RajaongkirEvent _value;
  // ignore: unused_field
  final $Res Function(RajaongkirEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RajaongkirEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'RajaongkirEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProvinceListData,
    required TResult Function(String provinceId) getCityByProvinceId,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProvinceListData,
    TResult Function(String provinceId)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProvinceListData value) getProvinceListData,
    required TResult Function(_GetCityByProvinceId value) getCityByProvinceId,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProvinceListData value)? getProvinceListData,
    TResult Function(_GetCityByProvinceId value)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RajaongkirEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetProvinceListDataCopyWith<$Res> {
  factory _$GetProvinceListDataCopyWith(_GetProvinceListData value,
          $Res Function(_GetProvinceListData) then) =
      __$GetProvinceListDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProvinceListDataCopyWithImpl<$Res>
    extends _$RajaongkirEventCopyWithImpl<$Res>
    implements _$GetProvinceListDataCopyWith<$Res> {
  __$GetProvinceListDataCopyWithImpl(
      _GetProvinceListData _value, $Res Function(_GetProvinceListData) _then)
      : super(_value, (v) => _then(v as _GetProvinceListData));

  @override
  _GetProvinceListData get _value => super._value as _GetProvinceListData;
}

/// @nodoc

class _$_GetProvinceListData implements _GetProvinceListData {
  const _$_GetProvinceListData();

  @override
  String toString() {
    return 'RajaongkirEvent.getProvinceListData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetProvinceListData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProvinceListData,
    required TResult Function(String provinceId) getCityByProvinceId,
  }) {
    return getProvinceListData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProvinceListData,
    TResult Function(String provinceId)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (getProvinceListData != null) {
      return getProvinceListData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProvinceListData value) getProvinceListData,
    required TResult Function(_GetCityByProvinceId value) getCityByProvinceId,
  }) {
    return getProvinceListData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProvinceListData value)? getProvinceListData,
    TResult Function(_GetCityByProvinceId value)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (getProvinceListData != null) {
      return getProvinceListData(this);
    }
    return orElse();
  }
}

abstract class _GetProvinceListData implements RajaongkirEvent {
  const factory _GetProvinceListData() = _$_GetProvinceListData;
}

/// @nodoc
abstract class _$GetCityByProvinceIdCopyWith<$Res> {
  factory _$GetCityByProvinceIdCopyWith(_GetCityByProvinceId value,
          $Res Function(_GetCityByProvinceId) then) =
      __$GetCityByProvinceIdCopyWithImpl<$Res>;
  $Res call({String provinceId});
}

/// @nodoc
class __$GetCityByProvinceIdCopyWithImpl<$Res>
    extends _$RajaongkirEventCopyWithImpl<$Res>
    implements _$GetCityByProvinceIdCopyWith<$Res> {
  __$GetCityByProvinceIdCopyWithImpl(
      _GetCityByProvinceId _value, $Res Function(_GetCityByProvinceId) _then)
      : super(_value, (v) => _then(v as _GetCityByProvinceId));

  @override
  _GetCityByProvinceId get _value => super._value as _GetCityByProvinceId;

  @override
  $Res call({
    Object? provinceId = freezed,
  }) {
    return _then(_GetCityByProvinceId(
      provinceId: provinceId == freezed
          ? _value.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetCityByProvinceId implements _GetCityByProvinceId {
  const _$_GetCityByProvinceId({required this.provinceId});

  @override
  final String provinceId;

  @override
  String toString() {
    return 'RajaongkirEvent.getCityByProvinceId(provinceId: $provinceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCityByProvinceId &&
            (identical(other.provinceId, provinceId) ||
                const DeepCollectionEquality()
                    .equals(other.provinceId, provinceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(provinceId);

  @JsonKey(ignore: true)
  @override
  _$GetCityByProvinceIdCopyWith<_GetCityByProvinceId> get copyWith =>
      __$GetCityByProvinceIdCopyWithImpl<_GetCityByProvinceId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getProvinceListData,
    required TResult Function(String provinceId) getCityByProvinceId,
  }) {
    return getCityByProvinceId(provinceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getProvinceListData,
    TResult Function(String provinceId)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (getCityByProvinceId != null) {
      return getCityByProvinceId(provinceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetProvinceListData value) getProvinceListData,
    required TResult Function(_GetCityByProvinceId value) getCityByProvinceId,
  }) {
    return getCityByProvinceId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetProvinceListData value)? getProvinceListData,
    TResult Function(_GetCityByProvinceId value)? getCityByProvinceId,
    required TResult orElse(),
  }) {
    if (getCityByProvinceId != null) {
      return getCityByProvinceId(this);
    }
    return orElse();
  }
}

abstract class _GetCityByProvinceId implements RajaongkirEvent {
  const factory _GetCityByProvinceId({required String provinceId}) =
      _$_GetCityByProvinceId;

  String get provinceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCityByProvinceIdCopyWith<_GetCityByProvinceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RajaongkirStateTearOff {
  const _$RajaongkirStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _OnLoading onLoading() {
    return const _OnLoading();
  }

  _OnError onError(StatusDataModel status) {
    return _OnError(
      status,
    );
  }

  _OnGetProvinceData onGetProvinceData(
      ProvinceResponseDataModel provinceResponse) {
    return _OnGetProvinceData(
      provinceResponse,
    );
  }

  _OnGetCityByProvince onGetCityByProvince(CityResponseDataModel cityResponse) {
    return _OnGetCityByProvince(
      cityResponse,
    );
  }
}

/// @nodoc
const $RajaongkirState = _$RajaongkirStateTearOff();

/// @nodoc
mixin _$RajaongkirState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RajaongkirStateCopyWith<$Res> {
  factory $RajaongkirStateCopyWith(
          RajaongkirState value, $Res Function(RajaongkirState) then) =
      _$RajaongkirStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RajaongkirStateCopyWithImpl<$Res>
    implements $RajaongkirStateCopyWith<$Res> {
  _$RajaongkirStateCopyWithImpl(this._value, this._then);

  final RajaongkirState _value;
  // ignore: unused_field
  final $Res Function(RajaongkirState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RajaongkirState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RajaongkirState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnLoadingCopyWith<$Res> {
  factory _$OnLoadingCopyWith(
          _OnLoading value, $Res Function(_OnLoading) then) =
      __$OnLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnLoadingCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$OnLoadingCopyWith<$Res> {
  __$OnLoadingCopyWithImpl(_OnLoading _value, $Res Function(_OnLoading) _then)
      : super(_value, (v) => _then(v as _OnLoading));

  @override
  _OnLoading get _value => super._value as _OnLoading;
}

/// @nodoc

class _$_OnLoading implements _OnLoading {
  const _$_OnLoading();

  @override
  String toString() {
    return 'RajaongkirState.onLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) {
    return onLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) {
    return onLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onLoading != null) {
      return onLoading(this);
    }
    return orElse();
  }
}

abstract class _OnLoading implements RajaongkirState {
  const factory _OnLoading() = _$_OnLoading;
}

/// @nodoc
abstract class _$OnErrorCopyWith<$Res> {
  factory _$OnErrorCopyWith(_OnError value, $Res Function(_OnError) then) =
      __$OnErrorCopyWithImpl<$Res>;
  $Res call({StatusDataModel status});

  $StatusDataModelCopyWith<$Res> get status;
}

/// @nodoc
class __$OnErrorCopyWithImpl<$Res> extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$OnErrorCopyWith<$Res> {
  __$OnErrorCopyWithImpl(_OnError _value, $Res Function(_OnError) _then)
      : super(_value, (v) => _then(v as _OnError));

  @override
  _OnError get _value => super._value as _OnError;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_OnError(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusDataModel,
    ));
  }

  @override
  $StatusDataModelCopyWith<$Res> get status {
    return $StatusDataModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$_OnError implements _OnError {
  const _$_OnError(this.status);

  @override
  final StatusDataModel status;

  @override
  String toString() {
    return 'RajaongkirState.onError(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnError &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$OnErrorCopyWith<_OnError> get copyWith =>
      __$OnErrorCopyWithImpl<_OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) {
    return onError(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class _OnError implements RajaongkirState {
  const factory _OnError(StatusDataModel status) = _$_OnError;

  StatusDataModel get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnErrorCopyWith<_OnError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetProvinceDataCopyWith<$Res> {
  factory _$OnGetProvinceDataCopyWith(
          _OnGetProvinceData value, $Res Function(_OnGetProvinceData) then) =
      __$OnGetProvinceDataCopyWithImpl<$Res>;
  $Res call({ProvinceResponseDataModel provinceResponse});

  $ProvinceResponseDataModelCopyWith<$Res> get provinceResponse;
}

/// @nodoc
class __$OnGetProvinceDataCopyWithImpl<$Res>
    extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$OnGetProvinceDataCopyWith<$Res> {
  __$OnGetProvinceDataCopyWithImpl(
      _OnGetProvinceData _value, $Res Function(_OnGetProvinceData) _then)
      : super(_value, (v) => _then(v as _OnGetProvinceData));

  @override
  _OnGetProvinceData get _value => super._value as _OnGetProvinceData;

  @override
  $Res call({
    Object? provinceResponse = freezed,
  }) {
    return _then(_OnGetProvinceData(
      provinceResponse == freezed
          ? _value.provinceResponse
          : provinceResponse // ignore: cast_nullable_to_non_nullable
              as ProvinceResponseDataModel,
    ));
  }

  @override
  $ProvinceResponseDataModelCopyWith<$Res> get provinceResponse {
    return $ProvinceResponseDataModelCopyWith<$Res>(_value.provinceResponse,
        (value) {
      return _then(_value.copyWith(provinceResponse: value));
    });
  }
}

/// @nodoc

class _$_OnGetProvinceData implements _OnGetProvinceData {
  const _$_OnGetProvinceData(this.provinceResponse);

  @override
  final ProvinceResponseDataModel provinceResponse;

  @override
  String toString() {
    return 'RajaongkirState.onGetProvinceData(provinceResponse: $provinceResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetProvinceData &&
            (identical(other.provinceResponse, provinceResponse) ||
                const DeepCollectionEquality()
                    .equals(other.provinceResponse, provinceResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinceResponse);

  @JsonKey(ignore: true)
  @override
  _$OnGetProvinceDataCopyWith<_OnGetProvinceData> get copyWith =>
      __$OnGetProvinceDataCopyWithImpl<_OnGetProvinceData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) {
    return onGetProvinceData(provinceResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onGetProvinceData != null) {
      return onGetProvinceData(provinceResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) {
    return onGetProvinceData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onGetProvinceData != null) {
      return onGetProvinceData(this);
    }
    return orElse();
  }
}

abstract class _OnGetProvinceData implements RajaongkirState {
  const factory _OnGetProvinceData(ProvinceResponseDataModel provinceResponse) =
      _$_OnGetProvinceData;

  ProvinceResponseDataModel get provinceResponse =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetProvinceDataCopyWith<_OnGetProvinceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnGetCityByProvinceCopyWith<$Res> {
  factory _$OnGetCityByProvinceCopyWith(_OnGetCityByProvince value,
          $Res Function(_OnGetCityByProvince) then) =
      __$OnGetCityByProvinceCopyWithImpl<$Res>;
  $Res call({CityResponseDataModel cityResponse});

  $CityResponseDataModelCopyWith<$Res> get cityResponse;
}

/// @nodoc
class __$OnGetCityByProvinceCopyWithImpl<$Res>
    extends _$RajaongkirStateCopyWithImpl<$Res>
    implements _$OnGetCityByProvinceCopyWith<$Res> {
  __$OnGetCityByProvinceCopyWithImpl(
      _OnGetCityByProvince _value, $Res Function(_OnGetCityByProvince) _then)
      : super(_value, (v) => _then(v as _OnGetCityByProvince));

  @override
  _OnGetCityByProvince get _value => super._value as _OnGetCityByProvince;

  @override
  $Res call({
    Object? cityResponse = freezed,
  }) {
    return _then(_OnGetCityByProvince(
      cityResponse == freezed
          ? _value.cityResponse
          : cityResponse // ignore: cast_nullable_to_non_nullable
              as CityResponseDataModel,
    ));
  }

  @override
  $CityResponseDataModelCopyWith<$Res> get cityResponse {
    return $CityResponseDataModelCopyWith<$Res>(_value.cityResponse, (value) {
      return _then(_value.copyWith(cityResponse: value));
    });
  }
}

/// @nodoc

class _$_OnGetCityByProvince implements _OnGetCityByProvince {
  const _$_OnGetCityByProvince(this.cityResponse);

  @override
  final CityResponseDataModel cityResponse;

  @override
  String toString() {
    return 'RajaongkirState.onGetCityByProvince(cityResponse: $cityResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnGetCityByProvince &&
            (identical(other.cityResponse, cityResponse) ||
                const DeepCollectionEquality()
                    .equals(other.cityResponse, cityResponse)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityResponse);

  @JsonKey(ignore: true)
  @override
  _$OnGetCityByProvinceCopyWith<_OnGetCityByProvince> get copyWith =>
      __$OnGetCityByProvinceCopyWithImpl<_OnGetCityByProvince>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() onLoading,
    required TResult Function(StatusDataModel status) onError,
    required TResult Function(ProvinceResponseDataModel provinceResponse)
        onGetProvinceData,
    required TResult Function(CityResponseDataModel cityResponse)
        onGetCityByProvince,
  }) {
    return onGetCityByProvince(cityResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? onLoading,
    TResult Function(StatusDataModel status)? onError,
    TResult Function(ProvinceResponseDataModel provinceResponse)?
        onGetProvinceData,
    TResult Function(CityResponseDataModel cityResponse)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onGetCityByProvince != null) {
      return onGetCityByProvince(cityResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnLoading value) onLoading,
    required TResult Function(_OnError value) onError,
    required TResult Function(_OnGetProvinceData value) onGetProvinceData,
    required TResult Function(_OnGetCityByProvince value) onGetCityByProvince,
  }) {
    return onGetCityByProvince(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnLoading value)? onLoading,
    TResult Function(_OnError value)? onError,
    TResult Function(_OnGetProvinceData value)? onGetProvinceData,
    TResult Function(_OnGetCityByProvince value)? onGetCityByProvince,
    required TResult orElse(),
  }) {
    if (onGetCityByProvince != null) {
      return onGetCityByProvince(this);
    }
    return orElse();
  }
}

abstract class _OnGetCityByProvince implements RajaongkirState {
  const factory _OnGetCityByProvince(CityResponseDataModel cityResponse) =
      _$_OnGetCityByProvince;

  CityResponseDataModel get cityResponse => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnGetCityByProvinceCopyWith<_OnGetCityByProvince> get copyWith =>
      throw _privateConstructorUsedError;
}
