import 'package:flutter/material.dart';
import 'package:testapi/weather_info.dart';

class testApi extends StatelessWidget {
  const testApi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const weatherInfo(),
      //home: addtodoList(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple.shade300,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}
