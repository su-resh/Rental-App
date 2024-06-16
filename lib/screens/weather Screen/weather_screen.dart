import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WeatherScreen(),
  ));
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final String apiKey = '436123b3e6bd4292194ce68d8e469576';
  final String defaultCity = 'Pokhara'; // Default city
  late Future<Map<String, dynamic>> _weatherData;

  @override
  void initState() {
    super.initState();
    _weatherData = getWeather(defaultCity);
  }

  Future<Map<String, dynamic>> getWeather(String city) async {
    final String apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

    try {
      http.Response response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        title: const Text('Weather',
            style: TextStyle(color: Color.fromARGB(255, 103, 102, 102))),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: _weatherData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return WeatherView(weatherData: snapshot.data!);
          }
        },
      ),
    );
  }
}

class WeatherView extends StatelessWidget {
  final Map<String, dynamic> weatherData;

  const WeatherView({Key? key, required this.weatherData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cityName = weatherData['name'];
    final temp =
        (weatherData['main']['temp'] - 273.15).round(); // Kelvin to Celsius
    final description = weatherData['weather'][0]['main'];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '$cityName',
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.thermostat_rounded, size: 40),
              const SizedBox(width: 10),
              Text(
                '$temp°C',
                style: const TextStyle(fontSize: 28),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '$description',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
