import 'package:cost_checker/application/location_controller.dart';
import 'package:cost_checker/application/rajaongkir/rajaongkir_bloc.dart';
import 'package:cost_checker/domain/city/city_data_model.dart';
import 'package:cost_checker/domain/core/status_data_model.dart';
import 'package:cost_checker/domain/province/province_data_model.dart';
import 'package:cost_checker/presentation/weight/weight_page.dart';
import 'package:cost_checker/presentation/widgets/location_drop_down_button.dart';
import 'package:cost_checker/presentation/widgets/page_title_widget.dart';
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
  CityDataModel? _selectedCity;
  final formKey = GlobalKey<FormState>();

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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    PageTitle(title: "DESTINATION CITY"),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
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
                    Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      key: formKey,
                      child: Column(
                        children: [
                          BlocProvider(
                            create: (context) => provinceBLoc
                              ..add(RajaongkirEvent.getProvinceListData()),
                            child:
                                BlocConsumer<RajaongkirBloc, RajaongkirState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                return state.maybeMap(
                                    orElse: () => SizedBox(),
                                    onLoading: (e) => loadingDropdownButton(),
                                    onError: (e) => errorDropdown(e.status),
                                    onGetProvinceData: (e) =>
                                        LocationDropDownButton<
                                                ProvinceDataModel>(
                                            label: "Province",
                                            validator: (val) {
                                              if (val == null) {
                                                return "Tidak ada provinsi yang dipilih";
                                              } else {
                                                return null;
                                              }
                                            },
                                            itemData: e
                                                .provinceResponse.results!
                                                .map((e) => DropdownMenuItem(
                                                      child: Text(e.province!),
                                                      value: e,
                                                    ))
                                                .toList(),
                                            onChanged: (e) {
                                              cityBloc.add(RajaongkirEvent
                                                  .getCityByProvinceId(
                                                      provinceId:
                                                          e.provinceId!));
                                            },
                                            hintText: "Choose City"));
                              },
                            ),
                          ),
                          SizedBox(height: 20),
                          BlocProvider(
                            create: (context) => cityBloc,
                            child:
                                BlocConsumer<RajaongkirBloc, RajaongkirState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                return state.maybeMap(
                                    orElse: () {
                                      return SizedBox();
                                    },
                                    onLoading: (e) => loadingDropdownButton(),
                                    onError: (e) => errorDropdown(e.status),
                                    onGetCityByProvince: (e) {
                                      return LocationDropDownButton<
                                              CityDataModel>(
                                          label: "City",
                                          validator: (val) {
                                            if (_selectedCity == null) {
                                              return "City must not be null ";
                                            }
                                          },
                                          itemData: e.cityResponse.results!
                                              .map((e) => DropdownMenuItem(
                                                    child: Text(e.type! +
                                                        " " +
                                                        e.cityName!),
                                                    value: e,
                                                  ))
                                              .toList(),
                                          onChanged: (e) {
                                            _selectedCity = e;
                                          },
                                          hintText: "Choose City");
                                    });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  child: Text("SET PACKAGE WEIGHT"),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Get.put(LocationController())
                          .setDestinationCity(_selectedCity!);
                      Get.toNamed(WeightPage.TAG);
                    }
                  },
                )),
          )
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
