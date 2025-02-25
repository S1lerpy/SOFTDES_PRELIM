import 'package:flutter/material.dart';

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        WeatherCard(
          location: "Dhaka",
          country: "Current location",
          weather: "Thunder",
          temperature: "20°C",
          icon: "assets/thunder.png", 
        ),
        SizedBox(height: 16),
        Text(
          "Around the world",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        WeatherCard(
          location: "California",
          country: "United States",
          weather: "Clear",
          temperature: "6°C",
          icon: "assets/heavy_rain.png",  
        ),
        WeatherCard(
          location: "Beijing",
          country: "China",
          weather: "Mostly sunny",
          temperature: "5°C",
          icon: "assets/sunny.png",  
        ),
        WeatherCard(
          location: "Moscow",
          country: "Russia",
          weather: "Cloudy",
          temperature: "-4°C",
          icon: "assets/snow.png",  
        )
      ],
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String location;
  final String country;
  final String weather;
  final String temperature;
  final String icon;  // Change IconData to String path

  const WeatherCard({
    required this.location,
    required this.country,
    required this.weather,
    required this.temperature,
    required this.icon,  // Accept PNG image path
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.deepPurple.shade900,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  weather,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  icon,  // Display the PNG image
                  width: 64,
                  height: 64,
                ),
                Text(
                  temperature,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
