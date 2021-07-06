import 'package:cost_checker/domain/cost/courier_data_model.dart';
import 'package:cost_checker/domain/courier/courier_detail_data_model.dart';

class Constants {
  static List<CourierDetailDataModel> _courierList = [
    CourierDetailDataModel(
        name: 'jne',
        description: "PT Tiki Jalur Nugraha Ekakurir JNE",
        imageAsset: 'assets/images/jne.png'),
    CourierDetailDataModel(
        name: 'tiki',
        description: "Titipan Kilat TIKI",
        imageAsset: 'assets/images/tiki.png'),
    CourierDetailDataModel(
        name: 'pos',
        description: "POS INDONESIA",
        imageAsset: 'assets/images/pos.png'),
  ];
  static List<CourierDetailDataModel> get getCourierList => _courierList;
}
