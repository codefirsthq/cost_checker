import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:cost_checker/domain/city/city_response_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/province/province_data_model.dart';
import 'package:cost_checker/domain/province/province_response_data_model.dart';
import 'package:cost_checker/infrastructure/rajaongkir/rajaongkir_repository.dart';
import 'package:cost_checker/presentation/destination_city/destination_city_page.dart';
import 'package:flutter/material.dart';

class OriginCityPage extends StatefulWidget {
  const OriginCityPage({Key? key}) : super(key: key);

  @override
  _OriginCityPageState createState() => _OriginCityPageState();
}

class _OriginCityPageState extends State<OriginCityPage> {
  String provinceId = "1";
  Future<ProvinceResponseDataModel> provinceFuture =
      RajaongkirRepository().getProvinceData();
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
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Origin City",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                height: 200,
                child: Image.asset('assets/images/cf_doorbell.png'),
              ),
              SizedBox(height: 20),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Please select the city of destination to check the shipping cost",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Province",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  FutureBuilder<ProvinceResponseDataModel>(
                    future: provinceFuture,
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return loadingDropdownButton();
                        case ConnectionState.done:
                          if (snapshot.hasError) {
                            return errorDropdown(
                                snapshot.error as StatusDataModel);
                          } else {
                            return DropdownButtonFormField<ProvinceDataModel>(
                              isExpanded: true,
                              items: snapshot.data!.results!
                                  .map((e) => DropdownMenuItem(
                                        child: Text(e.province!),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (e) {
                                //fungsi ini akan mentrigger city,
                                print(e!.provinceId);
                                setState(() {
                                  provinceId = e.provinceId!;
                                });
                              },
                              decoration: InputDecoration(
                                hintText: "Choose province",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2),
                                    borderRadius: BorderRadius.circular(4)),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            );
                          }
                        default:
                          return loadingDropdownButton();
                      }
                    },
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "City",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  FutureBuilder<CityResponseDataModel>(
                    future:
                        RajaongkirRepository().getCityByProvinceId(provinceId),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return loadingDropdownButton();
                        case ConnectionState.done:
                          if (snapshot.hasError) {
                            return errorDropdown(
                                snapshot.error as StatusDataModel);
                          } else {
                            return DropdownButtonFormField<CityDataModel>(
                              isExpanded: true,
                              items: snapshot.data!.results!
                                  .map((e) => DropdownMenuItem(
                                        child:
                                            Text(e.type! + " " + e.cityName!),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (e) {
                                print(e);
                              },
                              decoration: InputDecoration(
                                hintText: "Choose city",
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue, width: 2),
                                    borderRadius: BorderRadius.circular(4)),
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            );
                          }
                        default:
                          return loadingDropdownButton();
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    child: Text("SET DESTINATION"),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DestinationCityPage()));
                    },
                  ))
            ],
          ),
        ),
      )),
    );
  }

  DropdownButtonFormField errorDropdown(StatusDataModel error) {
    return DropdownButtonFormField(
      items: [],
      onChanged: (e) {},
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {},
        ),
        hintText: error.description,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(4)),
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }

  DropdownButtonFormField loadingDropdownButton() {
    return DropdownButtonFormField(
      items: [],
      onChanged: (e) {},
      decoration: InputDecoration(
        suffixIcon: Transform.scale(
          scale: 0.5,
          child: CircularProgressIndicator.adaptive(),
        ),
        hintText: "Getting data . . .",
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(4)),
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}
