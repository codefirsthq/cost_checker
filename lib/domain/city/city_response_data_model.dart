import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_response_data_model.freezed.dart';
part 'city_response_data_model.g.dart';

@freezed
class CityResponseDataModel with _$CityResponseDataModel {
  factory CityResponseDataModel({
    @JsonKey(name: "status") StatusDataModel? status,
    @JsonKey(name: "results") List<CityDataModel>? results,
  }) = _CityResponseDataModel;

  factory CityResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$CityResponseDataModelFromJson(json);
}
