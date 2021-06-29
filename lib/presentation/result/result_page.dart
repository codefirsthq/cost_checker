import 'package:cost_checker/application/location_controller.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('origin City'),
            Text(locationController.getSelectedOriginCity.toJson().toString()),
            Text('destination City'),
            Text(locationController.getSelectedDestiantionCity
                .toJson()
                .toString()),
            Text('weight'),
            Text(locationController.getWeight.toString()),
          ],
        ),
      ),
    );
  }
}
