part of 'rajaongkir_bloc.dart';

@freezed
class RajaongkirState with _$RajaongkirState {
  const factory RajaongkirState.initial() = _Initial;
  const factory RajaongkirState.onLoading() = _OnLoading;
  const factory RajaongkirState.onError(String message) = _OnError;
  const factory RajaongkirState.onGetProvinceData(
      ProvinceResponseDataModel provinceResponse) = _OnGetProvinceData;
}
