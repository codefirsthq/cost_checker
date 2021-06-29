import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/presentation/result/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightPage extends StatefulWidget {
  static final String TAG = '/weight_page';
  const WeightPage({Key? key}) : super(key: key);

  @override
  _WeightPageState createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  TextEditingController weightController = TextEditingController();
  FocusNode weichtFocusNode = FocusNode();

  @override
  void initState() {
    weichtFocusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CF Delivery",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Set Weight",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.asset('assets/images/cf_sortir.png'),
              ),
              SizedBox(height: 20),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Please set the package weight",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 250,
                      child: EditableText(
                          controller: weightController,
                          focusNode: weichtFocusNode,
                          maxLines: 1,
                          forceLine: false,
                          showCursor: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          cursorColor: Colors.teal,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          backgroundCursorColor: Colors.black),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "kg",
                      style: TextStyle(fontSize: 40),
                    )
                  ]),
              SizedBox(
                height: 40,
              ),
            ])),
          ),
          Container(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                child: Text("CALCULATE COST"),
                onPressed: () {
                  Get.put(LocationController())
                      .setWeight(int.parse(weightController.text));

                  Get.toNamed(ResultPage.TAG);
                },
              ))
        ],
      ),
    );
  }
}
