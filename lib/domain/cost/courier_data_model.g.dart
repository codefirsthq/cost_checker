// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courier_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourierDataModel _$_$_CourierDataModelFromJson(Map<String, dynamic> json) {
  return _$_CourierDataModel(
    code: json['code'] as String? ?? '',
    name: json['name'] as String? ?? '',
    costs: (json['costs'] as List<dynamic>?)
            ?.map((e) => ServiceDataModel.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CourierDataModelToJson(
        _$_CourierDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'costs': instance.costs,
    };
