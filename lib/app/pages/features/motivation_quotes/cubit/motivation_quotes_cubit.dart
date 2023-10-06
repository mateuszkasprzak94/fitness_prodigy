import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';

part 'motivation_quotes_state.dart';

class MotivationQuotesCubit extends Cubit<MotivationQuotesState> {
  MotivationQuotesCubit(this._motivationQuotesRepository)
      : super(const MotivationQuotesState());

  final MotivationQuotesRepository _motivationQuotesRepository;

  Future<void> getQuoteModel() async {
    emit(const MotivationQuotesState(status: Status.initial));
    try {
      final quoteModel = await _motivationQuotesRepository.getQuoteModel();
      emit(MotivationQuotesState(model: quoteModel, status: Status.success));
    } catch (error) {
      emit(
        MotivationQuotesState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
