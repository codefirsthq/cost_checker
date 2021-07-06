import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/presentation/result/result_page.dart';
import 'package:cost_checker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseCourierPage extends StatefulWidget {
  static final String TAG = '/choose_courier_page';
  const ChooseCourierPage({Key? key}) : super(key: key);

  @override
  _ChooseCourierPageState createState() => _ChooseCourierPageState();
}

class _ChooseCourierPageState extends State<ChooseCourierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CF Delivery"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Courier List",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Container(
                height: Get.size.width / 2,
                child: Image.asset('assets/images/cf_arrived.png')),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: Constants.getCourierList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.put(LocationController())
                        .setSelectedCourier(Constants.getCourierList[index]);
                    Get.toNamed(ResultPage.TAG);
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Container(
                      height: 80,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              Constants.getCourierList[index].imageAsset,
                              width: 100,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                              child: Text(
                            Constants.getCourierList[index].description,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.keyboard_arrow_right_sharp,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
