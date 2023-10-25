// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart'
    as _i4;
import 'package:fitness_prodigy/app/data/remote_data_sources/weather_remote_data_source.dart'
    as _i6;
import 'package:fitness_prodigy/app/pages/features/goals/cubit/goals_cubit.dart'
    as _i8;
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart'
    as _i9;
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart'
    as _i10;
import 'package:fitness_prodigy/app/repositories/goals_repository.dart' as _i3;
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart'
    as _i5;
import 'package:fitness_prodigy/app/repositories/weather_repository.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GoalsRepository>(() => _i3.GoalsRepository());
    gh.factory<_i4.MotivationQuotesRemoteDioDataSource>(
        () => _i4.MotivationQuotesRemoteDioDataSource());
    gh.factory<_i5.MotivationQuotesRepository>(() =>
        _i5.MotivationQuotesRepository(
            motivationQuotesRemoteDataSource:
                gh<_i4.MotivationQuotesRemoteDioDataSource>()));
    gh.factory<_i6.WeatherRemoteDioDataSource>(
        () => _i6.WeatherRemoteDioDataSource());
    gh.factory<_i7.WeatherRepository>(() => _i7.WeatherRepository(
        weatherRemoteDataSource: gh<_i6.WeatherRemoteDioDataSource>()));
    gh.factory<_i8.GoalsCubit>(
        () => _i8.GoalsCubit(goalsRepository: gh<_i3.GoalsRepository>()));
    gh.factory<_i9.MotivationQuotesCubit>(() => _i9.MotivationQuotesCubit(
        motivationQuotesRepository: gh<_i5.MotivationQuotesRepository>()));
    gh.factory<_i10.WeatherCubit>(() =>
        _i10.WeatherCubit(weatherRepository: gh<_i7.WeatherRepository>()));
    return this;
  }
}
