import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String description =
    "Are you planning to take your workout outdoors? Don't let unexpected weather catch you off guard! Check the current conditions in your location to make the most of your fitness routine. Whether it's a sunny day perfect for a run or a chance of rain that calls for an indoor workout, we've got you covered. Stay informed and stay active! 💪⛅️🌧️";

class WeatherContent extends StatefulWidget {
  const WeatherContent({super.key});

  @override
  State<WeatherContent> createState() => _WeatherContentState();
}

class _WeatherContentState extends State<WeatherContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Welcome to the Weather Center! 🌦️',
          style: GoogleFonts.satisfy(fontSize: 24, color: Colors.black),
          maxLines: 2,
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/weather4.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(
                description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
