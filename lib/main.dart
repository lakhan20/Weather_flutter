import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:weather/service/apiService.dart';

void main() {
  runApp(MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final locationController=TextEditingController();
  String ?lcn;
  _getLococation(String location){
    print(location);
    lcn=location;
  }
  String? giveLocationToApi()
  {
    return lcn;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: Column(
          children: [
            Column(
              children: [
                TextField(
                  controller: locationController,
                  decoration: InputDecoration(
                    hintText: 'location'
                  ),
              ),
              ElevatedButton(onPressed: (){
                getWeatherData(locationController.text);
              }, child: Text("submit"))
              ],
            )
          ],
        )


    );
  }
}
