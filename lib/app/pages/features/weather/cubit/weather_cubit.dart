import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/weather_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(const WeatherState());
}
