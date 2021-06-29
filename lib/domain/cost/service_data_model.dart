import 'package:cost_checker/domain/cost/service_cost_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_data_model.freezed.dart';
part 'service_data_model.g.dart';

@freezed
class ServiceDataModel with _$ServiceDataModel {
  factory ServiceDataModel({
    @Default("") String service,
    @Default("") String description,
    @Default([]) List<ServiceCostDataModel> cost,
  }) = _ServiceDataModel;

  factory ServiceDataModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceDataModelFromJson(json);
}
