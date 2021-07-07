import 'package:cost_checker/domain/city/city_response_data_model.dart';
import 'package:cost_checker/domain/cost/cost_request_data_model.dart';
import 'package:cost_checker/domain/cost/cost_response_data_model.dart';
import 'package:cost_checker/domain/province/province_response_data_model.dart';

abstract class IRajaongkir {
  Future<ProvinceResponseDataModel> getProvinceData();
  Future<CityResponseDataModel> getCityData();
  Future<CityResponseDataModel> getCityByProvinceId(String provinceId);
  Future<CostResponseDataModel> getCost(CostRequestDataModel request);
}
