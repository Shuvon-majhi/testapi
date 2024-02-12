import 'package:flutter/material.dart';
import 'package:testapi/model.dart';

class weatherInfo extends StatefulWidget {
  const weatherInfo({super.key});

  @override
  State<weatherInfo> createState() => _weatherInfoState();
}

class _weatherInfoState extends State<weatherInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather info App'),
      ),
      body: ListView.builder(
          itemCount: weather.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City: ${weather[index]['city']}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text('Temperature: ${weather[index]['temperature']}'),
                    Text('Condition: ${weather[index]['condition']}'),
                    Text('Humidity: ${weather[index]['humidity']}'),
                    Text('WindSpeed: ${weather[index]['windSpeed']}'),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
