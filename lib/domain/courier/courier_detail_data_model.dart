import 'package:freezed_annotation/freezed_annotation.dart';

part 'courier_detail_data_model.freezed.dart';
part 'courier_detail_data_model.g.dart';

@freezed
class CourierDetailDataModel with _$CourierDetailDataModel {
  factory CourierDetailDataModel({
    required String name,
    required String description,
  }) = _CourierDetailDataModel;

  factory CourierDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$CourierDetailDataModelFromJson(json);
}
