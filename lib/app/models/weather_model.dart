class WeatherModel {
  const WeatherModel({
    required this.city,
    required this.temperature,
    required this.condition,
  });
  final String city;
  final double temperature;
  final String condition;

  WeatherModel.fromJson(Map<String, dynamic> json)
      : city = json['location']['name'],
        temperature = json['current']['temp_c'] + 0.0,
        condition = json['current']['condition']['text'];
}
