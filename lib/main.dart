import 'package:flutter/material.dart';
import 'package:sky_sense/screens/loading_screen.dart';

void main() => runApp(const SkySense());

class SkySense extends StatelessWidget {
  const SkySense({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const LoadingScreen(),
    );
  }
}