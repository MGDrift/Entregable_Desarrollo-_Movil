import 'dart:convert'; // Para convertir JSON
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = '3dfe5bd758cd6ec95003f8a4a7e3d1d6'; // Reemplaza con tu clave API

  Future<Map<String, dynamic>> getWeatherData(String city) async {
    final String url = 'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city';

    // Realizamos la solicitud GET
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // Si la respuesta es exitosa, decodificamos el JSON
      return json.decode(response.body);
    } else {
      throw Exception('Error al obtener los datos del clima');
    }
  }
}
