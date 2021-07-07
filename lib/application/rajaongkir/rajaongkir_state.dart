part of 'rajaongkir_bloc.dart';

@freezed
class RajaongkirState with _$RajaongkirState {
  const factory RajaongkirState.initial() = _Initial;
  const factory RajaongkirState.onLoading() = _OnLoading;
  const factory RajaongkirState.onError(StatusDataModel status) = _OnError;
  const factory RajaongkirState.onGetProvinceData(
      ProvinceResponseDataModel provinceResponse) = _OnGetProvinceData;
  const factory RajaongkirState.onGetCityByProvince(
      CityResponseDataModel cityResponse) = _OnGetCityByProvince;
}
