part of 'event_planner_page_cubit.dart';

class EventPlannerPageState {
  const EventPlannerPageState({
    this.items = const [],
    this.loadingErrorOccured = false,
    this.removingErrorOccured = false,
  });

  final List<ItemModel> items;
  final bool loadingErrorOccured;
  final bool removingErrorOccured;
}
