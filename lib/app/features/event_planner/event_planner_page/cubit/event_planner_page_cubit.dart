import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/models/event_planner_item_model.dart';
import 'package:fitness_prodigy/app/repositories/items_repository.dart';

part 'event_planner_page_state.dart';

class EventPlannerPageCubit extends Cubit<EventPlannerPageState> {
  EventPlannerPageCubit(this._itemsRepository)
      : super(const EventPlannerPageState());

  final ItemsRepository _itemsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription = _itemsRepository.getItemsStream().listen(
      (items) {
        emit(EventPlannerPageState(items: items));
      },
    )..onError(
        (error) {
          emit(const EventPlannerPageState(loadingErrorOccured: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await _itemsRepository.delete(id: documentID);
    } catch (error) {
      emit(
        const EventPlannerPageState(removingErrorOccured: true),
      );
      start();
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
