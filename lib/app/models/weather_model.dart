// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@JsonSerializable()
class WeatherModel {
  @JsonKey(name: "location")
  Location location;
  @JsonKey(name: "current")
  Current current;

  WeatherModel({
    required this.location,
    required this.current,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class Current {
  @JsonKey(name: "temp_c")
  double tempC;
  @JsonKey(name: "condition")
  Condition condition;

  Current({
    required this.tempC,
    required this.condition,
  });

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable()
class Condition {
  @JsonKey(name: "text")
  String text;

  Condition({
    required this.text,
  });

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "name")
  String name;

  Location({
    required this.name,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}



// // To parse this JSON data, do
// //
// //     final weatherModel = weatherModelFromJson(jsonString);

// import 'package:json_annotation/json_annotation.dart';
// import 'dart:convert';

// part 'weather_model.g.dart';

// WeatherModel weatherModelFromJson(String str) =>
//     WeatherModel.fromJson(json.decode(str));

// String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

// @JsonSerializable()
// class WeatherModel {
//   @JsonKey(name: "location")
//   Location location;
  
//   @JsonKey(name: "current")
//   Current current;

//   WeatherModel({
//     required this.location,
//     required this.current,
//   });

//   factory WeatherModel.fromJson(Map<String, dynamic> json) =>
//       _$WeatherModelFromJson(json);

//   Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
// }

// @JsonSerializable()
// class Current {
//   @JsonKey(name: "temp_c")
//   double tempC;

//   Current({
//     required this.tempC,
//   });

//   factory Current.fromJson(Map<String, dynamic> json) =>
//       _$CurrentFromJson(json);

//   Map<String, dynamic> toJson() => _$CurrentToJson(this);
// }

// @JsonSerializable()
// class Location {
//   @JsonKey(name: "name")
//   String name;

//   Location({
//     required this.name,
//   });

//   factory Location.fromJson(Map<String, dynamic> json) =>
//       _$LocationFromJson(json);

//   Map<String, dynamic> toJson() => _$LocationToJson(this);
// }




// import 'package:json_annotation/json_annotation.dart';

// part 'weather_model.g.dart';

// @JsonSerializable()
// class WeatherModel {
//   const WeatherModel({
//     required this.city,
//     required this.temperature,
//     required this.condition,
//   });

//   @JsonKey(name: 'name')
//   final String city;

//   @JsonKey(name: 'temp_c')
//   final double temperature;

//   @JsonKey(name: 'text')
//   final String condition;

//   factory WeatherModel.fromJson(Map<String, dynamic> json) =>
//       _$WeatherModelFromJson(json);

//       Map<String,dynamic> toJson() => _$WeatherModelFromJson(this);

//   // WeatherModel.fromJson(Map<String, dynamic> json)
//   //     : city = json['location']['name'],
//   //       temperature = json['current']['temp_c'] + 0.0,
//   //       condition = json['current']['condition']['text'];
// }
