import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
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
    );
  }
}
