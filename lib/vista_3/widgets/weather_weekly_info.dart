import 'package:flutter/material.dart';
import 'package:myapp/domain/weekly_weather.dart';

class WeatherWeeklyInfo extends StatelessWidget {
  final String WeeklyWeatherReportText;
  final List<WeeklyWeather> 
      WeeklyWeatherReportInfo;
  final TextButton WeeklyWeatherReportAction;

  const WeatherWeeklyInfo({
    super.key,
    required this.WeeklyWeatherReportText,
    required this.WeeklyWeatherReportInfo,
    required this.WeeklyWeatherReportAction,
  });

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleLarge;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 21, 162, 194).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Text(
            WeeklyWeatherReportText,
            style: title,
          ),
        ),

        const SizedBox(height: 20.0),

        Column(
            children: WeeklyWeatherReportInfo
                .map((weather) => Text(weather.information, style: TextStyle(fontSize: 20, color: Colors.white)))
                .toList()),

        const SizedBox(height: 20.0), // Espacio entre el texto y el botón

        // Botón separado del texto
        Align(
          alignment: Alignment.center, // Alinea el botón a la derecha (puedes cambiar esto)
          child: WeeklyWeatherReportAction
        ),
        ],
    );
  }
}
