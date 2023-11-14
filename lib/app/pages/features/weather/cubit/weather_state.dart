part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    WeatherModel? model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _WeatherState;
}
