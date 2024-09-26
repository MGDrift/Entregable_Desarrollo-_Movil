import 'package:flutter/material.dart';
import 'package:myapp/data/datasource/weekly_weathers.dart';
import 'package:myapp/vista_1/search_city_screen.dart';
import 'package:myapp/vista_3/widgets/weather_weekly_info.dart';

class WeatherWeeklyScreen extends StatelessWidget {
  const WeatherWeeklyScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 46, 21, 95),
    body: Column(
      children: [
        const SizedBox(height: 40), // Espacio en la parte superior
        SizedBox(
          width: 500,
          height: 400,
          child: WeatherWeeklyInfo(
            WeeklyWeatherReportText: "Prónostico de 3 días",
            WeeklyWeatherReportInfo: GetWeeklyWeather(),
            WeeklyWeatherReportAction: TextButton(
              onPressed: () {
                // Navegar a la siguiente pantalla (WeatherWeeklyScreen)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchCity()),
                );
              },style: ButtonStyle(
                visualDensity: VisualDensity.compact,
                backgroundColor: WidgetStateProperty.all<Color>(Color.fromARGB(255, 72, 23, 186)),
              ),
              child: const Text(
                'Nuevo pronóstico',
                style: TextStyle(
                  color: Colors.white, // Cambia el color si es necesario
                  fontSize: 18,        // Ajusta el tamaño de la fuente si es necesario
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20), // Espacio en la parte inferior
        Expanded(child: Container()), // Ocupa el espacio restante
      ],
    ),
  );
}
}
