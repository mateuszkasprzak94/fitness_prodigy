part of 'vitamins_cubit.dart';

@freezed
class VitaminsState with _$VitaminsState {
  factory VitaminsState({
    @Default([]) List<VitaminsTypeModel> vitaminsData,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _VitaminsState;
}
