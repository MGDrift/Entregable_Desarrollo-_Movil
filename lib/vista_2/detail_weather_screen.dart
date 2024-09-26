import 'package:flutter/material.dart';
import 'package:myapp/data/datasource/weathers.dart'; // Asegúrate de que esta ruta sea correcta
import 'package:myapp/vista_2/widgets/detail_weather_info.dart';
import 'package:myapp/vista_3/weather_weekly_screen.dart';

class DetailWeatherScreen extends StatelessWidget {
  const DetailWeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 21, 95), // Color de fondo
      body: Center(
        child: SizedBox(
          width: 500,
          height: 260,
          child: DetailWeatherInfo(
            weatherReportText: 'Reporte del clima', 
            weatherReportInfo: getWeathers(),
            weatherReportAction: TextButton(
              onPressed: () {
                // Navegar a la siguiente pantalla (WeatherWeeklyScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WeatherWeeklyScreen()),
                );
              },style: ButtonStyle(
                visualDensity: VisualDensity.compact,
                backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 72, 23, 186)),
              ),
              child: const Text(
                'Ver pronóstico completo',
                style: TextStyle(
                  color: Colors.white, // Cambia el color si es necesario
                  fontSize: 18,        // Ajusta el tamaño de la fuente si es necesario
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

