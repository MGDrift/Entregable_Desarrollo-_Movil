import 'package:flutter/material.dart';
import 'package:myapp/domain/weather.dart';

List<Weather> getWeathers() {
  return [
    Weather(
      date: "Sep 16, 2:55 PM", 
      place: "Medellín, CO", 
      temperature: "30°",
       icon: const Icon(Icons.wb_sunny, color: Colors.yellow)
       )
  ];
}