import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WeatherScreen(),
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
  ));
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final String apiKey = '436123b3e6bd4292194ce68d8e469576';
  final List<String> cities = [
    'Pokhara',
    'Kathmandu',
    'Lalitpur',
    'Biratnagar',
    'Chitwan'
  ];
  String selectedCity = 'Pokhara'; // Default city
  late Future<Map<String, dynamic>> _weatherData;

  @override
  void initState() {
    super.initState();
    _weatherData = getWeather(selectedCity);
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

  void _onCityChanged(String? newCity) {
    setState(() {
      selectedCity = newCity!;
      _weatherData = getWeather(selectedCity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove back button
        title: const Text('Weather',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
              value: selectedCity,
              onChanged: _onCityChanged,
              items: cities.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: FutureBuilder<Map<String, dynamic>>(
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
          ),
        ],
      ),
    );
  }
}

class WeatherView extends StatelessWidget {
  final Map<String, dynamic> weatherData;

  const WeatherView({Key? key, required this.weatherData}) : super(key: key);

  IconData _getWeatherIcon(String description) {
    switch (description.toLowerCase()) {
      case 'clear':
        return Icons.wb_sunny;
      case 'clouds':
        return Icons.cloud;
      case 'rain':
        return Icons.beach_access;
      case 'snow':
        return Icons.ac_unit;
      case 'thunderstorm':
        return Icons.flash_on;
      default:
        return Icons.wb_cloudy;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cityName = weatherData['name'];
    final temp =
        (weatherData['main']['temp'] - 273.15).round(); // Kelvin to Celsius
    final description = weatherData['weather'][0]['main'];
    final icon = _getWeatherIcon(description);

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
              Icon(icon, size: 40),
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
