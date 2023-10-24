part of 'event_planner_page_cubit.dart';

@freezed
class EventPlannerPageState with _$EventPlannerPageState {
  factory EventPlannerPageState({
    @Default([]) List<ItemModel> items,
    @Default(false) bool loadingErrorOccured,
    @Default(false) bool removingErrorOccured,
  }) = _EventPlannerPageState;
}


// class EventPlannerPageState {
//   const EventPlannerPageState({
//     this.items = const [],
//     this.loadingErrorOccured = false,
//     this.removingErrorOccured = false,
//   });

//   final List<ItemModel> items;
//   final bool loadingErrorOccured;
//   final bool removingErrorOccured;
// }
