import 'package:cost_checker/presentation/courier/choose_courier_page.dart';
import 'package:cost_checker/presentation/dashboard/dashboard_page.dart';
import 'package:cost_checker/presentation/destination_city/destination_city_page.dart';
import 'package:cost_checker/presentation/origin_city/origin_city_page.dart';
import 'package:cost_checker/presentation/result/result_page.dart';
import 'package:cost_checker/presentation/weight/weight_page.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: DashboardPage.TAG, page: () => DashboardPage()),
    GetPage(name: OriginCityPage.TAG, page: () => OriginCityPage()),
    GetPage(name: DestinationCityPage.TAG, page: () => DestinationCityPage()),
    GetPage(name: ChooseCourierPage.TAG, page: () => ChooseCourierPage()),
    GetPage(name: WeightPage.TAG, page: () => WeightPage()),
    GetPage(name: ResultPage.TAG, page: () => ResultPage()),
  ];
}
