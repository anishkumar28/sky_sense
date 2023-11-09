import 'package:flutter/material.dart';
import 'package:sky_sense/screens/location_screen.dart';
import 'package:sky_sense/services/location.dart';
import 'package:sky_sense/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


const apiKey = 'a3af5769a5a362782ac5eea804cac575';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocationData() async{
  Location location = Location();

  await location.getCurrentLocation();

  var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

  NetworkHelper networkHelper = NetworkHelper(url.toString());

  NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey')

  var weatherData = await networkHelper.getdata();

  double temperature = decodedData['main']['temp'];
  int condition = decodedData['weather'][0]['id'];
  String cityName = decodedData['name'];

  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}