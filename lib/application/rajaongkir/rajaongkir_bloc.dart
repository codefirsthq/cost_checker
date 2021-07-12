import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cost_checker/domain/city/city_response_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/cost/cost_request_data_model.dart';
import 'package:cost_checker/domain/cost/cost_response_data_model.dart';
import 'package:cost_checker/domain/province/province_response_data_model.dart';
import 'package:cost_checker/infrastructure/rajaongkir/i_rajaongkir.dart';
import 'package:cost_checker/infrastructure/rajaongkir/rajaongkir_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rajaongkir_event.dart';
part 'rajaongkir_state.dart';
part 'rajaongkir_bloc.freezed.dart';

class RajaongkirBloc extends Bloc<RajaongkirEvent, RajaongkirState> {
  RajaongkirBloc() : super(_Initial());

  final RajaongkirRepository repo = RajaongkirRepository();

  @override
  Stream<RajaongkirState> mapEventToState(
    RajaongkirEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      getProvinceListData: (value) async* {
        yield RajaongkirState.onLoading();
        //get data from repository \\
        try {
          final _data = await repo.getProvinceData();
          yield RajaongkirState.onGetProvinceData(_data);
        } catch (e) {
          yield RajaongkirState.onError(e as StatusDataModel);
        }
      },
      getCityByProvinceId: (_GetCityByProvinceId value) async* {
        yield RajaongkirState.onLoading();
        try {
          final _data = await repo.getCityByProvinceId(value.provinceId);
          yield RajaongkirState.onGetCityByProvince(_data);
        } catch (e) {
          yield RajaongkirState.onError(
              StatusDataModel(code: 1, description: "ERROR"));
        }
      },
      getCost: (_GetCost value) async* {
        yield RajaongkirState.onLoading();
        try {
          final _data = await repo.getCost(value.request);
          yield RajaongkirState.onGetCost(_data);
        } catch (e) {
          yield RajaongkirState.onError(
              StatusDataModel(code: 1, description: "ERROR"));
        }
      },
    );
  }
}
