// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProvinceResponseDataModel _$_$_ProvinceResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_ProvinceResponseDataModel(
    status: json['status'] == null
        ? null
        : StatusDataModel.fromJson(json['status'] as Map<String, dynamic>),
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => ProvinceDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ProvinceResponseDataModelToJson(
        _$_ProvinceResponseDataModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };
