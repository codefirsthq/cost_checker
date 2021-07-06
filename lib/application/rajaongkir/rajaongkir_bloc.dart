import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rajaongkir_event.dart';
part 'rajaongkir_state.dart';
part 'rajaongkir_bloc.freezed.dart';

class RajaongkirBloc extends Bloc<RajaongkirEvent, RajaongkirState> {
  RajaongkirBloc() : super(_Initial());

  @override
  Stream<RajaongkirState> mapEventToState(
    RajaongkirEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
