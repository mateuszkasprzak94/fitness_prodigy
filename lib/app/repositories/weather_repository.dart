import 'package:fitness_prodigy/app/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:fitness_prodigy/app/models/weather_model.dart';

class WeatherRepository {
  WeatherRepository({required this.weatherRemoteDataSource});

  final WeatherRemoteDioDataSource weatherRemoteDataSource;

  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    final json = await weatherRemoteDataSource.getWeatherData(
      city: city,
    );

    if (json == null) {
      return null;
    }

    return WeatherModel.fromJson(json);
  }
}
