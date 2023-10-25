import 'package:fitness_prodigy/app/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();  




// void configureDependencies() {
//   // Bloc
//   getIt.registerFactory(
//       () => MotivationQuotesCubit(motivationQuotesRepository: getIt()));
//   getIt.registerFactory(() => WeatherCubit(weatherRepository: getIt()));
//   getIt.registerFactory(() => GoalsCubit(goalsRepository: getIt()));

//   // Repositories
//   getIt.registerFactory(() =>
//       MotivationQuotesRepository(motivationQuotesRemoteDataSource: getIt()));
//   getIt.registerFactory(
//       () => WeatherRepository(weatherRemoteDataSource: getIt()));
//   getIt.registerFactory(() => GoalsRepository());

//   // DataSources
//   getIt.registerFactory(() => MotivationQuotesRemoteDioDataSource());
//   getIt.registerFactory(() => WeatherRemoteDioDataSource());
// }
