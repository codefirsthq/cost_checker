// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceDataModel _$_$_ServiceDataModelFromJson(Map<String, dynamic> json) {
  return _$_ServiceDataModel(
    service: json['service'] as String? ?? '',
    description: json['description'] as String? ?? '',
    cost: (json['cost'] as List<dynamic>?)
            ?.map(
                (e) => ServiceCostDataModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_ServiceDataModelToJson(
        _$_ServiceDataModel instance) =>
    <String, dynamic>{
      'service': instance.service,
      'description': instance.description,
      'cost': instance.cost,
    };
