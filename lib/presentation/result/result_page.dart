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
  late Future<CostResponseDataModel> getCostResponse;
  @override
  void initState() {
    getCostResponse = RajaongkirRepository().getCost(
      CostRequestDataModel(
        origin: locationController.getSelectedOriginCity.cityId.toString(),
        destination:
            locationController.getSelectedDestiantionCity.cityId.toString(),
        weight: locationController.getWeight,
        courier: locationController.getSelectedCourier!.name,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CostResponseDataModel>(
        future: getCostResponse,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return LoadingCostWidget();
            case ConnectionState.done:
              if (snapshot.hasError) {
                return ErrorCostWidget();
              } else {
                return CompleteCostWidget(costResponse: snapshot.data);
              }
            default:
              return Center(child: CircularProgressIndicator.adaptive());
          }
        });
  }
}

class LoadingCostWidget extends StatelessWidget {
  const LoadingCostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class ErrorCostWidget extends StatelessWidget {
  const ErrorCostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Error"),
      ),
    );
  }
}

class CompleteCostWidget extends StatelessWidget {
  const CompleteCostWidget({
    Key? key,
    required this.costResponse,
  }) : super(key: key);
  final CostResponseDataModel? costResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(costResponse!.results.first.name),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListTile(
                      title: Text(
                        "Origin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      tileColor: Colors.red[300],
                      subtitle: Text(
                        "${costResponse!.originDetails!.cityName}, ${costResponse!.originDetails!.province}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_upward_outlined,
                        color: Colors.white,
                      )),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListTile(
                    tileColor: Colors.green[300],
                    title: Text(
                      "Destination",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "${costResponse!.destinationDetails!.cityName}, ${costResponse!.destinationDetails!.province}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "List Price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Divider(thickness: 1),
            Expanded(
                child: ListView.builder(
                    itemCount: costResponse!.results.first.costs.length,
                    itemBuilder: (context, index) {
                      var _services = costResponse!.results.first.costs;
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _services[index].description,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Column(
                                children: _services[index].cost.map((e) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Text(
                                      "Harga",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Text(e.etd),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(e.value.toString(),
                                          style: TextStyle(fontSize: 17)),
                                    ),
                                  )
                                ],
                              );
                            }).toList()),
                            Divider()
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
