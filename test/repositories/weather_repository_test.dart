import 'package:fitness_prodigy/app/data/remote_data_sources/weather_remote_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/weather_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/weather_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock
    implements WeatherRemoteDioDataSource {}

void main() {
  late WeatherRepository sut;
  late MockWeatherRepository dataSource;

  setUp(() {
    dataSource = MockWeatherRepository();
    sut = WeatherRepository(weatherRemoteDataSource: dataSource);
  });

  group('getWeatherModel', () {
    test('should call weatherRemoteDataSource.getWeatherData() method',
        () async {
      const city = 'Lublin';
      final jsonData = {
        'location': {'name': 'Lublin'},
        'current': {
          'temp_c': 15.0,
          'condition': {'text': 'Cloudy'}
        },
      };
      // 1 Mocked data source
      when(() => dataSource.getWeatherData(city: city))
          .thenAnswer((_) async => jsonData);

      // 2 Called method
      final results = await sut.getWeatherModel(city: city);

      // 3 Verify that the data source method was called once
      verify(() => dataSource.getWeatherData(city: city)).called(1);

      // 4 Additional check if the mothod returns expected result
      expect(results, isNotNull);
      expect(results, isA<WeatherModel>());
      expect(results?.city.name, 'Lublin');
      expect(results?.current.tempC, 15.0);
      expect(results?.current.condition.weatherCondition, 'Cloudy');
    });

    test('should return null when data is not available', () async {
      const city = 'Invalid City';

      // 1 Mocked data source with no data available (return null)
      when(() => dataSource.getWeatherData(city: city))
          .thenAnswer((_) async => null);

      // 2 Called method
      final results = await sut.getWeatherModel(city: city);

      // 3 Ensure that method returns null when data is not available
      expect(results, isNull);
    });
  });
}
