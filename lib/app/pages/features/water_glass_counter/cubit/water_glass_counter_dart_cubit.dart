import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/water_glass_counter_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/water_glass_counter_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_glass_counter_dart_state.dart';
part 'water_glass_counter_dart_cubit.freezed.dart';

class WaterGlassCounterCubit extends Cubit<WaterGlassCounterState> {
  WaterGlassCounterCubit({required this.waterGlassCounterRepository})
      : super(WaterGlassCounterState());

  final WaterGlassCounterRepository waterGlassCounterRepository;

  StreamSubscription? _waterSubscription;

  Future<void> start() async {
    emit(
      WaterGlassCounterState(
        model: [],
        status: Status.loading,
      ),
    );
    _waterSubscription =
        waterGlassCounterRepository.getWaterStream().listen((model) {
      emit(WaterGlassCounterState(
        model: model,
        status: Status.success,
      ));
    })
          ..onError((error) {
            emit(
              WaterGlassCounterState(
                status: Status.error,
                errorMessage: error.toString(),
              ),
            );
          });
  }

  Future<void> incrementGlass() async {
    await waterGlassCounterRepository.increment();
  }

  Future<void> decrementGlass() async {
    await waterGlassCounterRepository.decrement();
  }

  Future<void> updateGoal(int newGoal) async {
    await waterGlassCounterRepository.updateGoal(newGoal);
  }

  @override
  Future<void> close() {
    _waterSubscription?.cancel();
    return super.close();
  }
}
