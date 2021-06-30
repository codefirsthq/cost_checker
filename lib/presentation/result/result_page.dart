import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/cost/cost_request_data_model.dart';
import 'package:cost_checker/domain/cost/cost_response_data_model.dart';
import 'package:cost_checker/domain/courier/courier_detail_data_model.dart';
import 'package:cost_checker/infrastructure/rajaongkir/rajaongkir_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

class ResultPage extends StatefulWidget {
  static final String TAG = '/result_page';
  const ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final locationController = Get.put(LocationController());

  CostRequestDataModel getAllData() {
    var data = Get.arguments as CourierDetailDataModel;
    print("ini data courier" + data.toJson().toString());

    String? _originCityId = locationController.getSelectedOriginCity.cityId;
    String? _destinationCityId =
        locationController.getSelectedDestiantionCity.cityId;
    int? _weight = locationController.getWeight;
    String? courier = data.name;

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
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: FutureBuilder<CostResponseDataModel>(
          future: RajaongkirRepository().getCost(getAllData()),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator.adaptive(),
                );

              case ConnectionState.done:
                if (snapshot.hasError) {
                  var _error = snapshot.error as StatusDataModel;
                  return Text(_error.description.toString());
                } else {
                  var _data = snapshot.data;
                  var _cityOrigin = _data!.originDetails;
                  var _cityDestination = _data.destinationDetails;
                  var _result = _data.results;
                  return Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            ListTile(
                              title: Text("Origin"),
                              subtitle: Text(
                                  "${_cityOrigin!.type} ${_cityOrigin.cityName}, ${_cityOrigin.province}  "),
                            ),
                            ListTile(
                              title: Text("Destination"),
                              subtitle: Text(
                                  "${_cityDestination!.type} ${_cityDestination.cityName}, ${_cityDestination.province}  "),
                            ),
                          ],
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: _result.length,
                                itemBuilder: (context, index) {
                                  return Text(_result[index].name);
                                }))
                      ],
                    ),
                  );
                }
              default:
                return Center(child: CircularProgressIndicator.adaptive());
            }
          }),
    );
  }
}
