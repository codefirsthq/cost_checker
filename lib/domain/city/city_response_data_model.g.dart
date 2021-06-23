// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityResponseDataModel _$_$_CityResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_CityResponseDataModel(
    status: json['status'] == null
        ? null
        : StatusDataModel.fromJson(json['status'] as Map<String, dynamic>),
    results: (json['results'] as List<dynamic>?)
        ?.map((e) => CityDataModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CityResponseDataModelToJson(
        _$_CityResponseDataModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'results': instance.results,
    };
