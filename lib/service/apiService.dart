import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

getWeatherData(String city) async {
  var link = "https://api.weatherapi.com/v1/current.json?key=f1996a5b617b4b33a4763918230106&q=${city}";
  var res= await http.get(Uri.parse(link));
  if(res.statusCode==200){
  print("data found...!!!");
  var data=res.body.toString();
  print(data);
// return data; it will return data !!!
  }
  print(city);
}