part of 'rajaongkir_bloc.dart';

@freezed
class RajaongkirEvent with _$RajaongkirEvent {
  const factory RajaongkirEvent.started() = _Started;
  const factory RajaongkirEvent.getProvinceListData() = _GetProvinceListData;
  const factory RajaongkirEvent.getCityByProvinceId(
      {required String provinceId}) = _GetCityByProvinceId;
  const factory RajaongkirEvent.getCost(
      {required CostRequestDataModel request}) = _GetCost;
}
