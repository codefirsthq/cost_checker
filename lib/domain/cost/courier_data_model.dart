import 'package:cost_checker/domain/cost/service_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courier_data_model.freezed.dart';
part 'courier_data_model.g.dart';

@freezed
class CourierDataModel with _$CourierDataModel {
  factory CourierDataModel({
    @Default("") String code,
    @Default("") String name,
    @Default([]) List<ServiceDataModel> costs,
  }) = _CourierDataModel;

  factory CourierDataModel.fromJson(Map<String, dynamic> json) =>
      _$CourierDataModelFromJson(json);
}
