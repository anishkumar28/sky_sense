import 'package:flutter/material.dart';
import 'package:sky_sense/services/location.dart';

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

  void getLocation(){
  Location location = Location();
  location.getCurrentLocation();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}