import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/province/province_data_model.dart';
import 'package:cost_checker/domain/province/province_response_data_model.dart';
import 'package:dio/dio.dart';

class RajaongkirRepository {
  Dio _dio = Dio(
    BaseOptions(
      headers: {"key": "2eb6227ba2a659634f362a3298df53c8"},
      baseUrl: "https://api.rajaongkir.com/starter",
    ),
  );

  Future<ProvinceResponseDataModel> getProvinceData() async {
    Response response;
    try {
      response = await _dio.get("/province");
      var _dataResp = response.data['rajaongkir'];
      //query, status, results
      final _data = ProvinceResponseDataModel.fromJson(_dataResp);
      
      return _data;
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.response:
          if (e.response!.statusCode == 400) {
            //bad request
            var _errorData = e.response!.data;
            var _status = _errorData['rajaongkir']['status'];
            StatusDataModel error = StatusDataModel.fromJson(_status);
            throw error;
          }
          throw Exception(e.error.toString());

        default:
          throw Exception(e.error.toString());
      }
    }
  }
}
