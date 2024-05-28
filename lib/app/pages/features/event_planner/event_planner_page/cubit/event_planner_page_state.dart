part of 'event_planner_page_cubit.dart';

@freezed
class EventPlannerPageState with _$EventPlannerPageState {
  factory EventPlannerPageState({
    @Default([]) List<ItemModel> items,
    @Default(false) bool loadingErrorOccured,
    @Default(false) bool removingErrorOccured,
  }) = _EventPlannerPageState;
}
