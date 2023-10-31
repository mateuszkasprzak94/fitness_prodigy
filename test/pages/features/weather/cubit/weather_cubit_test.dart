import 'package:bloc_test/bloc_test.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/weather_model.dart';
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart';
import 'package:fitness_prodigy/app/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late WeatherCubit sut;
  late MockWeatherRepository repository;

  setUp(() {
    repository = MockWeatherRepository();
    sut = WeatherCubit(weatherRepository: repository);
  });

  group(
    'getWeatherModel',
    () {
      group(
        'success',
        () {
          setUp(() {
            when(() => repository.getWeatherModel(city: 'Lublin')).thenAnswer(
              (_) async => WeatherModel(
                  Location('Lublin'), Current(15, Condition('Sunny'))),
            );
          });

          blocTest<WeatherCubit, WeatherState>(
            'emits Status.loading then Status.success with results',
            build: () => sut,
            act: (cubit) => cubit.getWeatherModel(city: 'Lublin'),
            expect: () async => [
              WeatherState(
                status: Status.loading,
              ),
              WeatherState(
                model: WeatherModel(
                    Location('Lublin'), Current(15, Condition('Sunny'))),
                status: Status.success,
              ),
            ],
          );
        },
      );

      group(
        'failure',
        () {
          setUp(() {
            when(() => repository.getWeatherModel(city: 'Lublin'))
                .thenThrow(Exception('test-exception-error'));
          });

          blocTest<WeatherCubit, WeatherState>(
            'emits Status.loading then Status.error with error message',
            build: () => sut,
            act: (cubit) => cubit.getWeatherModel(city: 'Lublin'),
            expect: () async => [
              WeatherState(
                status: Status.loading,
              ),
              WeatherState(
                errorMessage: 'Exception: test-exception-error',
                status: Status.error,
              ),
            ],
          );
        },
      );
    },
  );
}
