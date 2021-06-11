import 'package:cost_checker/presentation/dashboard/dashboard_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cost Checker',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: DashboardPage());
  }
}
