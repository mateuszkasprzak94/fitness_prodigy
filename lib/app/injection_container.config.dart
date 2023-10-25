// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fitness_prodigy/app/cubit/auth_cubit.dart' as _i3;
import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart'
    as _i6;
import 'package:fitness_prodigy/app/data/remote_data_sources/weather_remote_data_source.dart'
    as _i8;
import 'package:fitness_prodigy/app/pages/features/event_planner/details/cubit/details_cubit.dart'
    as _i11;
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/cubit/add_cubit.dart'
    as _i10;
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/cubit/event_planner_page_cubit.dart'
    as _i12;
import 'package:fitness_prodigy/app/pages/features/goals/cubit/goals_cubit.dart'
    as _i13;
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart'
    as _i14;
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart'
    as _i15;
import 'package:fitness_prodigy/app/repositories/goals_repository.dart' as _i4;
import 'package:fitness_prodigy/app/repositories/items_repository.dart' as _i5;
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart'
    as _i7;
import 'package:fitness_prodigy/app/repositories/weather_repository.dart'
    as _i9;
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
    gh.factory<_i4.GoalsRepository>(() => _i4.GoalsRepository());
    gh.factory<_i5.ItemsRepository>(() => _i5.ItemsRepository());
    gh.factory<_i6.MotivationQuotesRemoteDioDataSource>(
        () => _i6.MotivationQuotesRemoteDioDataSource());
    gh.factory<_i7.MotivationQuotesRepository>(() =>
        _i7.MotivationQuotesRepository(
            motivationQuotesRemoteDataSource:
                gh<_i6.MotivationQuotesRemoteDioDataSource>()));
    gh.factory<_i8.WeatherRemoteDioDataSource>(
        () => _i8.WeatherRemoteDioDataSource());
    gh.factory<_i9.WeatherRepository>(() => _i9.WeatherRepository(
        weatherRemoteDataSource: gh<_i8.WeatherRemoteDioDataSource>()));
    gh.factory<_i10.AddCubit>(() => _i10.AddCubit(gh<_i5.ItemsRepository>()));
    gh.factory<_i11.DetailsCubit>(
        () => _i11.DetailsCubit(gh<_i5.ItemsRepository>()));
    gh.factory<_i12.EventPlannerPageCubit>(
        () => _i12.EventPlannerPageCubit(gh<_i5.ItemsRepository>()));
    gh.factory<_i13.GoalsCubit>(
        () => _i13.GoalsCubit(goalsRepository: gh<_i4.GoalsRepository>()));
    gh.factory<_i14.MotivationQuotesCubit>(() => _i14.MotivationQuotesCubit(
        motivationQuotesRepository: gh<_i7.MotivationQuotesRepository>()));
    gh.factory<_i15.WeatherCubit>(() =>
        _i15.WeatherCubit(weatherRepository: gh<_i9.WeatherRepository>()));
    return this;
  }
}
