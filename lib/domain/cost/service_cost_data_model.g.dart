// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_cost_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceCostDataModel _$_$_ServiceCostDataModelFromJson(
    Map<String, dynamic> json) {
  return _$_ServiceCostDataModel(
    value: json['value'] as int? ?? 0,
    etd: json['etd'] as String? ?? '',
    note: json['note'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_ServiceCostDataModelToJson(
        _$_ServiceCostDataModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'etd': instance.etd,
      'note': instance.note,
    };
