part of 'rajaongkir_bloc.dart';

@freezed
class RajaongkirEvent with _$RajaongkirEvent {
  const factory RajaongkirEvent.started() = _Started;
  const factory RajaongkirEvent.getProvinceListData() = _GetProvinceListData;
}