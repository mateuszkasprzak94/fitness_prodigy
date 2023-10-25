import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Bloc

  getIt.registerFactory(
      () => MotivationQuotesCubit(motivationQuotesRepository: getIt()));

  // Repositories
  getIt.registerFactory(() =>
      MotivationQuotesRepository(motivationQuotesRemoteDataSource: getIt()));

  // DataSources
  getIt.registerFactory(() => MotivationQuotesRemoteDioDataSource());
}
