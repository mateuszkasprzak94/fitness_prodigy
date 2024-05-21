import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/domain/models/event_planner_item_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/items_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_planner_page_state.dart';
part 'generated/event_planner_page_cubit.freezed.dart';

class EventPlannerPageCubit extends Cubit<EventPlannerPageState> {
  EventPlannerPageCubit(this._itemsRepository) : super(EventPlannerPageState());

  final ItemsRepository _itemsRepository;

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    _streamSubscription = _itemsRepository.getItemsStream().listen(
      (items) {
        emit(EventPlannerPageState(items: items));
      },
    )..onError(
        (error) {
          emit(EventPlannerPageState(loadingErrorOccured: true));
        },
      );
  }

  Future<void> remove({required String documentID}) async {
    try {
      await _itemsRepository.delete(id: documentID);
    } catch (error) {
      emit(
        EventPlannerPageState(removingErrorOccured: true),
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
