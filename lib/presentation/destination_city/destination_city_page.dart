import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/application/rajaongkir/rajaongkir_bloc.dart';
import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/province/province_data_model.dart';
import 'package:cost_checker/presentation/weight/weight_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class DestinationCityPage extends StatefulWidget {
  static final String TAG = '/destination_city_page';
  const DestinationCityPage({Key? key}) : super(key: key);

  @override
  _DestinationCityPageState createState() => _DestinationCityPageState();
}

class _DestinationCityPageState extends State<DestinationCityPage> {
  late CityDataModel _selectedCity;

  final provinceBLoc = RajaongkirBloc();
  final cityBloc = RajaongkirBloc();
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
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Text(
                        "Destination City",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      child: Image.asset('assets/images/cf_send.png'),
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
                        BlocProvider(
                          create: (context) => provinceBLoc
                            ..add(RajaongkirEvent.getProvinceListData()),
                          child: BlocConsumer<RajaongkirBloc, RajaongkirState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return state.maybeMap(
                                  orElse: () => SizedBox(),
                                  onLoading: (e) => loadingDropdownButton(),
                                  onError: (e) => errorDropdown(e.status),
                                  onGetProvinceData: (e) =>
                                      DropdownButtonFormField<
                                          ProvinceDataModel>(
                                        isExpanded: true,
                                        items: e.provinceResponse.results!
                                            .map((e) => DropdownMenuItem(
                                                  child: Text(e.province!),
                                                  value: e,
                                                ))
                                            .toList(),
                                        onChanged: (e) {
                                          cityBloc.add(RajaongkirEvent
                                              .getCityByProvinceId(
                                                  provinceId: e!.provinceId!));
                                        },
                                        decoration: InputDecoration(
                                          hintText: "Choose province",
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          floatingLabelBehavior:
                                              FloatingLabelBehavior.never,
                                        ),
                                      ));
                            },
                          ),
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
                        BlocProvider(
                          create: (context) => cityBloc,
                          child: BlocConsumer<RajaongkirBloc, RajaongkirState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return state.maybeMap(
                                  orElse: () {
                                    return SizedBox();
                                  },
                                  onLoading: (e) => loadingDropdownButton(),
                                  onError: (e) => errorDropdown(e.status),
                                  onGetCityByProvince: (e) {
                                    return DropdownButtonFormField<
                                        CityDataModel>(
                                      isExpanded: true,
                                      items: e.cityResponse.results!
                                          .map((e) => DropdownMenuItem(
                                                child: Text(e.type! +
                                                    " " +
                                                    e.cityName!),
                                                value: e,
                                              ))
                                          .toList(),
                                      onChanged: (e) {
                                        _selectedCity = e!;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Choose city",
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                      ),
                                    );
                                  });
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            )),
          ),
          Container(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                child: Text("SET PACKAGE WEIGHT"),
                onPressed: () {
                  Get.put(LocationController())
                      .setDestinationCity(_selectedCity);
                  Get.toNamed(WeightPage.TAG);
                },
              ))
        ],
      ),
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
