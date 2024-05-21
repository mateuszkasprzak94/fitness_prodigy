// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fitness_prodigy/app/cubit/auth_cubit.dart' as _i3;
import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart'
    as _i4;
import 'package:fitness_prodigy/app/data/remote_data_sources/weather_remote_data_source.dart'
    as _i5;
import 'package:fitness_prodigy/app/pages/features/event_planner/details/cubit/details_cubit.dart'
    as _i10;
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/cubit/add_cubit.dart'
    as _i11;
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/cubit/event_planner_page_cubit.dart'
    as _i12;
import 'package:fitness_prodigy/app/pages/features/goals/cubit/goals_cubit.dart'
    as _i9;
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart'
    as _i16;
import 'package:fitness_prodigy/app/pages/features/water_glass_counter/cubit/water_glass_counter_dart_cubit.dart'
    as _i13;
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart'
    as _i17;
import 'package:fitness_prodigy/app/domain/repositories/goals_repository.dart'
    as _i6;
import 'package:fitness_prodigy/app/domain/repositories/items_repository.dart'
    as _i7;
import 'package:fitness_prodigy/app/domain/repositories/motivation_quotes_repository.dart'
    as _i15;
import 'package:fitness_prodigy/app/domain/repositories/water_glass_counter_repository.dart'
    as _i8;
import 'package:fitness_prodigy/app/domain/repositories/weather_repository.dart'
    as _i14;
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
    gh.factory<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.factory<_i4.MotivationQuotesRemoteDioDataSource>(
        () => _i4.MotivationQuotesRemoteDioDataSource());
    gh.factory<_i5.WeatherRemoteDioDataSource>(
        () => _i5.WeatherRemoteDioDataSource());
    gh.factory<_i6.GoalsRepository>(() => _i6.GoalsRepository());
    gh.factory<_i7.ItemsRepository>(() => _i7.ItemsRepository());
    gh.factory<_i8.WaterGlassCounterRepository>(
        () => _i8.WaterGlassCounterRepository());
    gh.factory<_i9.GoalsCubit>(
        () => _i9.GoalsCubit(goalsRepository: gh<_i6.GoalsRepository>()));
    gh.factory<_i10.DetailsCubit>(
        () => _i10.DetailsCubit(gh<_i7.ItemsRepository>()));
    gh.factory<_i11.AddCubit>(() => _i11.AddCubit(gh<_i7.ItemsRepository>()));
    gh.factory<_i12.EventPlannerPageCubit>(
        () => _i12.EventPlannerPageCubit(gh<_i7.ItemsRepository>()));
    gh.factory<_i13.WaterGlassCounterCubit>(() => _i13.WaterGlassCounterCubit(
        waterGlassCounterRepository: gh<_i8.WaterGlassCounterRepository>()));
    gh.factory<_i14.WeatherRepository>(() => _i14.WeatherRepository(
        weatherRemoteDataSource: gh<_i5.WeatherRemoteDioDataSource>()));
    gh.factory<_i15.MotivationQuotesRepository>(() =>
        _i15.MotivationQuotesRepository(
            motivationQuotesRemoteDataSource:
                gh<_i4.MotivationQuotesRemoteDioDataSource>()));
    gh.factory<_i16.MotivationQuotesCubit>(() => _i16.MotivationQuotesCubit(
        motivationQuotesRepository: gh<_i15.MotivationQuotesRepository>()));
    gh.factory<_i17.WeatherCubit>(() =>
        _i17.WeatherCubit(weatherRepository: gh<_i14.WeatherRepository>()));
    return this;
  }
}
