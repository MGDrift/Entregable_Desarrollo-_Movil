import 'package:flutter/material.dart'; // Asegúrate de importar el paquete necesario para usar Icon.

class Weather {
  final String date;
  final String place;
  final String temperature;
  final Icon icon; // Cambia de String a Icon.

  Weather({
    required this.date,
    required this.place,
    required this.temperature,
    required this.icon, // Asegúrate de pasar un Icon aquí.
  });
}
