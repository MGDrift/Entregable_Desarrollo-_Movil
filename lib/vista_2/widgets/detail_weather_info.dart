import 'package:flutter/material.dart';
import 'package:myapp/domain/weather.dart';

class DetailWeatherInfo extends StatelessWidget {
  final String? weatherReportText;
  final List<Weather>
      weatherReportInfo; // Asegúrate de que esta propiedad exista
  final TextButton weatherReportAction;

  const DetailWeatherInfo(
      {super.key,
      this.weatherReportText,
      required this.weatherReportAction,
      required this.weatherReportInfo});

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleLarge;

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.center, // Alinea los elementos al inicio
      children: [
        // Texto dentro de su propio Container
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
            weatherReportText ?? 'Parece que no hemos encontrado tu reporte :/',
            style: title,
          ),
        ),
        Column(
            children: weatherReportInfo
                .map((weather) => Text(weather.date,
                    style: const TextStyle(fontSize: 20, color: Colors.white)))
                .toList()),
        Column(
            children: weatherReportInfo
                .map((weather) => Text(weather.place,
                    style: const TextStyle(fontSize: 20, color: Colors.white)))
                .toList()),
        Column(
            children: weatherReportInfo
                .map((weather) => Text(weather.temperature,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 194, 221, 72))))
                .toList()),
        Column(
          children: weatherReportInfo
              .map((weather) => weather.icon) // Solo usamos el icono directamente
              .toList(),
        ),


        const SizedBox(height: 20.0), // Espacio entre el texto y el botón

        // Aquí uso el `weatherReportAction` directamente en lugar de convertirlo en String
        Align(
          alignment: Alignment.center, // Alinea el botón al centro
          child: weatherReportAction,  // Usa el botón directamente
        ),
      ],
    );
  }
}
