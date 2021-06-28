import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  CityDataModel _selectedOriginCity = CityDataModel();
  CityDataModel _selectedDestinationCity = CityDataModel();
  int _weight = 0;

//SETTER
  void setOriginCity(CityDataModel city) {
    this._selectedOriginCity = city;
  }

  void setDestinationCity(CityDataModel city) {
    this._selectedDestinationCity = city;
  }

  void setWeight(int weight) {
    this._weight = weight;
  }

//GETTER
  CityDataModel get getSelectedOriginCity => this._selectedOriginCity;
  CityDataModel get getSelectedDestiantionCity => this._selectedDestinationCity;
  int get getWeight => this._weight;
}
