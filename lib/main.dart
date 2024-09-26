import 'package:flutter/material.dart';
import 'package:myapp/vista_1/search_city_screen.dart';
import 'package:myapp/vista_2/detail_weather_screen.dart';
import 'package:myapp/vista_3/weather_weekly_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchCity(),
    ); 
  }
}
