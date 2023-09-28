import 'package:fitness_prodigy/app/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    return const WeatherModel(city: 'Lublin', temperature: 27.0);
  }
}
