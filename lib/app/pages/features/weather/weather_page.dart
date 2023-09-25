import 'package:flutter/material.dart';

class WeatherContent extends StatefulWidget {
  const WeatherContent({super.key});

  @override
  State<WeatherContent> createState() => _WeatherContentState();
}

class _WeatherContentState extends State<WeatherContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Check weather in your location'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
    );
  }
}
