import 'package:flutter/material.dart';

class DestinationCityPage extends StatefulWidget {
  const DestinationCityPage({Key? key}) : super(key: key);

  @override
  _DestinationCityPageState createState() => _DestinationCityPageState();
}

class _DestinationCityPageState extends State<DestinationCityPage> {
  List<String> dataList = ["1", "2", "3", "4"];

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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                DropdownButtonFormField(
                  items: dataList
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (e) {},
                  decoration: InputDecoration(
                    hintText: "Choose province",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(4)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
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
                DropdownButtonFormField(
                  items: dataList
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (e) {},
                  decoration: InputDecoration(
                    hintText: "Choose city",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(4)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                )
              ],
            ),
            Spacer(),
            Container(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  child: Text("SET PACKAGE WEIGHT"),
                  onPressed: () {},
                ))
          ],
        ),
      )),
    );
  }
}
