import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_data_model.freezed.dart';
part 'city_data_model.g.dart';

@freezed
class CityDataModel with _$CityDataModel {
  factory CityDataModel({
    @JsonKey(name: 'city_id') String? cityId,
    @JsonKey(name: 'province_id') String? provinceId,
    @JsonKey(name: 'province') String? province,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'city_name') String? cityName,
    @JsonKey(name: 'postal_code') String? postalCode,
  }) = _CityDataModel;

  factory CityDataModel.fromJson(Map<String, dynamic> json) =>
      _$CityDataModelFromJson(json);
}
