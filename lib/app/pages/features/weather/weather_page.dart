import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String description =
    "Are you planning to take your workout outdoors? Don't let unexpected weather catch you off guard! Check the current conditions in your location to make the most of your fitness routine. Whether it's a sunny day perfect for a run or a chance of rain that calls for an indoor workout, we've got you covered. Stay informed and stay active! 💪⛅️🌧️";

class WeatherContent extends StatefulWidget {
  const WeatherContent({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherContent> createState() => _WeatherContentState();
}

final cityController = TextEditingController();

class _WeatherContentState extends State<WeatherContent> {
  @override
  Widget build(BuildContext context) {
    cityController.addListener(() => setState(() {}));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.15),
        title: Text(
          'Welcome to the Weather Center! 🌦️',
          style: GoogleFonts.satisfy(fontSize: 24, color: Colors.white),
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
              Container(
                color: Colors.black.withOpacity(0.25),
                child: Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: cityController,
                decoration: InputDecoration(
                  labelText: 'City',
                  hintText: 'City',
                  prefixIcon: const Icon(Icons.home),
                  suffixIcon: cityController.text.isEmpty
                      ? Container(width: 0)
                      : IconButton(
                          onPressed: () => cityController.clear(),
                          icon: const Icon(Icons.close)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
