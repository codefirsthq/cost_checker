import 'package:cost_checker/domain/cost/courier_data_model.dart';
import 'package:cost_checker/domain/courier/courier_detail_data_model.dart';

class Constants {
  static List<CourierDetailDataModel> _courierList = [
    CourierDetailDataModel(name: 'jne', description: "JNE"),
    CourierDetailDataModel(name: 'tiki', description: "TIKI"),
    CourierDetailDataModel(name: 'pos', description: "POS INDONESIA"),
  ];
  static List<CourierDetailDataModel> get getCourierList => _courierList;
}
