import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_cost_data_model.freezed.dart';
part 'service_cost_data_model.g.dart';

@freezed
class ServiceCostDataModel with _$ServiceCostDataModel {
  factory ServiceCostDataModel({
    @Default(0) int value,
    @Default("") String etd,
    @Default("") String note,
  }) = _ServiceCostDataModel;

  factory ServiceCostDataModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCostDataModelFromJson(json);
}
