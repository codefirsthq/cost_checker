import 'package:intl/intl.dart';

class Formatter {
  //number format
  static var _formatter = NumberFormat.currency(
      name: 'IDR', decimalDigits: 0, locale: "id", symbol: "IDR");

  static String formatCurrency(String number) {
    try {
      var _data = double.parse(number);
      return _formatter.format(_data);
    } catch (e) {
      //throw error
      throw Exception(e.toString());
    }
  }
}
