import 'package:cost_checker/presentation/dashboard/dashboard_page.dart';
import 'package:cost_checker/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cost Checker',
      getPages: Routes.pages,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.teal,
      ),
      initialRoute: DashboardPage.TAG,
    );
  }
}
