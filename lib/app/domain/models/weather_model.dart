// To parse this JSON data, do
//
//     final weatherModel = weatherModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel(
    @JsonKey(name: 'location') Location city,
    @JsonKey(name: 'current') Current current,
  ) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location(String name) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  factory Current(
    @JsonKey(name: 'temp_c') double tempC,
    Condition condition,
  ) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  factory Condition(
    @JsonKey(name: 'text') String weatherCondition,
  ) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
