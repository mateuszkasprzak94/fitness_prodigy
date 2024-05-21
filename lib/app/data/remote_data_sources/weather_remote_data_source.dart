import 'package:dio/dio.dart';
import 'package:fitness_prodigy/app/core/config.dart';
import 'package:injectable/injectable.dart';

@injectable
class WeatherRemoteDioDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    try {
      final response =
          await Dio().get<Map<String, dynamic>>(Config.getweatherUrl(city));
      return response.data;
    } on DioException catch (error) {
      throw Exception(
          error.response?.data['error']['message'] ?? 'Unknown error');
    }
  }
}
