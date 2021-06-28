import 'package:cost_checker/presentation/origin_city/origin_city_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DashboardPage extends StatefulWidget {
  static final String TAG = '/dashboard_page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "CodeFirst Delivery Checker",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/cf_delivery.png'),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(OriginCityPage.TAG);
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("CHECK COST"),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
