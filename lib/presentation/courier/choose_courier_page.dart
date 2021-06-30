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
      body: ListView.builder(
        itemCount: Constants.getCourierList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              //pindah ke halaman selanjutnya.
              Get.toNamed(ResultPage.TAG,
                  arguments: Constants.getCourierList[index],);
            },
            title: Text(Constants.getCourierList[index].description),
            trailing: Icon(Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
