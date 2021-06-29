import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/cost/courier_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_response_data_model.freezed.dart';
part 'cost_response_data_model.g.dart';

@freezed
class CostResponseDataModel with _$CostResponseDataModel {
  factory CostResponseDataModel({
    @JsonKey(name: "status") StatusDataModel? status,
    @JsonKey(name: "origin_details") CityDataModel? originDetails,
    @JsonKey(name: "destination_details") CityDataModel? destinationDetails,
    @Default([]) @JsonKey(name: "results") List<CourierDataModel> results,
  }) = _CostResponseDataModel;

  factory CostResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$CostResponseDataModelFromJson(json);
}
