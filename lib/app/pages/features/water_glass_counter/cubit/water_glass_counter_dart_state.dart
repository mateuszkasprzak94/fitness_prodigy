part of 'water_glass_counter_dart_cubit.dart';

@freezed
class WaterGlassCounterState with _$WaterGlassCounterState {
  factory WaterGlassCounterState({
    @Default([]) List<WaterModel?> model,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _WaterGlassCounterState;
}
