class WeatherModel {
  const WeatherModel({
    required this.city,
    required this.temperature,
  });
  final String city;
  final double temperature;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : city = json['location']['name'],
        temperature = json['current']['temp_c'] + 0.0;
}
