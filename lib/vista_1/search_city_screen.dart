import 'package:flutter/material.dart';
import 'package:myapp/vista_2/detail_weather_screen.dart';

class SearchCity extends StatefulWidget {
  const SearchCity({super.key});

  @override
  State<SearchCity> createState() => _SearchCityState();
}

class _SearchCityState extends State<SearchCity> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 46, 21, 95), // Color de fondo de toda la pantalla
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 194, 221, 72), // Color del texto
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Vamos a averiguar el clima',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 122, 221, 237), // Color del texto
              ),
            ),
            Icon(
              Icons.brightness_5_outlined,
              color: Color.fromARGB(255, 194, 221, 72),
              size: 30,
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Espaciado horizontal
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Busca tu ciudad :D',
                  fillColor: Colors.white, // Color de fondo del TextField
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar a la siguiente pantalla (DetailWeatherScreen)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailWeatherScreen()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
