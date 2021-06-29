import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/domain/cost/cost_request_data_model.dart';
import 'package:cost_checker/domain/cost/cost_response_data_model.dart';
import 'package:cost_checker/infrastructure/rajaongkir/rajaongkir_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  static final String TAG = '/result_page';
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final locationController = Get.put(LocationController());

  CostRequestDataModel getAllData() {
    String? _originCityId = locationController.getSelectedOriginCity.cityId;
    String? _destinationCityId =
        locationController.getSelectedDestiantionCity.cityId;
    int? _weight = locationController.getWeight;
    String? courier = 'jne';

    var _dataRequest = CostRequestDataModel(
      origin: _originCityId!,
      destination: _destinationCityId!,
      weight: _weight,
      courier: courier,
    );

    return _dataRequest;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<CostResponseDataModel>(
            future: RajaongkirRepository().getCost(getAllData()),
            builder: (context, snapshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getAllData();
        },
      ),
    );
  }
}
