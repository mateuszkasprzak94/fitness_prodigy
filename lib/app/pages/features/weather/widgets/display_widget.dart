import 'package:fitness_prodigy/app/domain/models/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DisplayWeatherWidget extends StatelessWidget {
  const DisplayWeatherWidget({
    required this.weatherModel,
    Key? key,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 15,
          left: 15,
          right: 15,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.55),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Lottie.asset(getWeatherAnimation(
                    weatherModel.current.condition.weatherCondition)),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      weatherModel.city.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(-1, 2),
                            blurRadius: 5,
                          ),
                        ],
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      '${weatherModel.current.tempC} °C',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 55,
                        shadows: [
                          const Shadow(
                            color: Colors.black,
                            offset: Offset(0, 5),
                            blurRadius: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  weatherModel.current.condition.weatherCondition,
                  style: const TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(-1, 2),
                        blurRadius: 5,
                      ),
                    ],
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Weather animations
String getWeatherAnimation(String? condition) {
  if (condition == null) {
    return 'assets/assets_weather/sunny.json'; // default to sunny
  }
  switch (condition.toLowerCase()) {
    case 'partly cloudy':
    case 'clouds':
    case 'mist':
    case 'smoke':
    case 'haze':
    case 'dust':
    case 'fog':
    case 'overcast':
      return 'assets/assets_weather/cloud.json';
    case 'patchy rain possible':
    case 'rain':
    case 'light rain':
    case 'drizzle':
    case 'shower rain':
      return 'assets/assets_weather/rain.json';
    case 'thunderstorm':
      return 'assets/assets_weather/thunder.json';
    case 'snow':
      return 'assets/assets_weather/snow.json';
    case 'clear':
      return 'assets/assets_weather/sunny.json';
    default:
      return 'assets/assets_weather/sunny.json';
  }
}
