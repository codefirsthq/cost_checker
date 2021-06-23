import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/province/province_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_response_data_model.freezed.dart';
part 'province_response_data_model.g.dart';

@freezed
class ProvinceResponseDataModel with _$ProvinceResponseDataModel {
  factory ProvinceResponseDataModel({
    @JsonKey(name: "status") StatusDataModel? status,
    @JsonKey(name: "results") List<ProvinceDataModel>? results,
  }) = _ProvinceResponseDataModel;

  factory ProvinceResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceResponseDataModelFromJson(json);
}
