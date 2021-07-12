import 'package:cost_checker/domain/city/city_response_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/cost/cost_request_data_model.dart';
import 'package:cost_checker/domain/cost/cost_response_data_model.dart';
import 'package:cost_checker/domain/province/province_response_data_model.dart';
import 'package:cost_checker/infrastructure/rajaongkir/i_rajaongkir.dart';
import 'package:dio/dio.dart';

class RajaongkirRepository implements IRajaongkir {
  Dio _dio = Dio(
    BaseOptions(
      headers: {"key": "2eb6227ba2a659634f362a3298df53c8"},
      baseUrl: "https://api.rajaongkir.com/starter",
    ),
  );

  @override
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

  @override
  Future<CityResponseDataModel> getCityByProvinceId(String provinceId) async {
    Response response;
    //siapkan params
    try {
      response =
          await _dio.get("/city", queryParameters: {"province": provinceId});
      var _dataResp = response.data['rajaongkir'];
      //query, status, results
      final _data = CityResponseDataModel.fromJson(_dataResp);

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

  @override
  Future<CityResponseDataModel> getCityData() {
    // TODO: implement getCityData
    throw UnimplementedError();
  }

  @override
  Future<CostResponseDataModel> getCost(CostRequestDataModel request) async {
    Response response;
    try {
      response = await _dio.post(
        "/cost",
        data: request.toJson(),
      );
      var _dataResp = response.data['rajaongkir'];
      //query, status, results
      final _data = CostResponseDataModel.fromJson(_dataResp);

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

  // Future<CityResponseDataModel> getCityData() async {
  //   Response response;
  //   try {
  //     response = await _dio.get("/city");
  //     var _dataResp = response.data['rajaongkir'];
  //     //query, status, results
  //     final _data = CityResponseDataModel.fromJson(_dataResp);

  //     return _data;
  //   } on DioError catch (e) {
  //     switch (e.type) {
  //       case DioErrorType.response:
  //         if (e.response!.statusCode == 400) {
  //           //bad request
  //           var _errorData = e.response!.data;
  //           var _status = _errorData['rajaongkir']['status'];
  //           StatusDataModel error = StatusDataModel.fromJson(_status);
  //           throw error;
  //         }
  //         throw Exception(e.error.toString());

  //       default:
  //         throw Exception(e.error.toString());
  //     }
  //   }
  // }

  // Future<CostResponseDataModel> getCost(CostRequestDataModel request) async {
  //   Response response;
  //   try {
  //     response = await _dio.post(
  //       "/cost",
  //       data: request.toJson(),
  //     );
  //     var _dataResp = response.data['rajaongkir'];
  //     //query, status, results
  //     final _data = CostResponseDataModel.fromJson(_dataResp);

  //     return _data;
  //   } on DioError catch (e) {
  //     switch (e.type) {
  //       case DioErrorType.response:
  //         if (e.response!.statusCode == 400) {
  //           //bad request
  //           var _errorData = e.response!.data;
  //           var _status = _errorData['rajaongkir']['status'];
  //           StatusDataModel error = StatusDataModel.fromJson(_status);
  //           throw error;
  //         }
  //         throw Exception(e.error.toString());

  //       default:
  //         throw Exception(e.error.toString());
  //     }
  //   }
  // }
}
