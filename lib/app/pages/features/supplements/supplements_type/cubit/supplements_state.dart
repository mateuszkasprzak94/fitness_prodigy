part of 'supplements_cubit.dart';

@freezed
class SupplementsState with _$SupplementsState {
  factory SupplementsState({
    @Default([]) List<SupplementsTypeModel> supplementsData,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SupplementsState;
}
