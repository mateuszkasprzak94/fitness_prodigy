import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/vitamins_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/vitamins_type_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vitamins_state.dart';
part 'generated/vitamins_cubit.freezed.dart';

class VitaminsCubit extends Cubit<VitaminsState> {
  VitaminsCubit({required this.vitaminsTypeRepository})
      : super(VitaminsState());

  final VitaminsTypeRepository vitaminsTypeRepository;

  Future<void> fetchData({required String vitaminType}) async {
    emit(
      VitaminsState(
        status: Status.loading,
      ),
    );
    try {
      final vitaminData =
          await vitaminsTypeRepository.getVitaminsType(vitaminType);

      emit(
        VitaminsState(
          status: Status.success,
          vitaminsData: vitaminData,
        ),
      );
    } catch (error) {
      emit(
        VitaminsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
