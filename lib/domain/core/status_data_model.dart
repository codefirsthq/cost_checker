import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_data_model.freezed.dart';
part 'status_data_model.g.dart';

@freezed
class StatusDataModel with _$StatusDataModel {
  factory StatusDataModel({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'description') String? description,
  }) = _StatusDataModel;

  factory StatusDataModel.fromJson(Map<String, dynamic> json) =>
      _$StatusDataModelFromJson(json);
}
