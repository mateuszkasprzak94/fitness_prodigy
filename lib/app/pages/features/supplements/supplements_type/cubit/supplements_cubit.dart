import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/supplements_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/supplements_type_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplements_state.dart';
part 'generated/supplements_cubit.freezed.dart';

class SupplementsCubit extends Cubit<SupplementsState> {
  SupplementsCubit({required this.supplementsTypeRepository})
      : super(SupplementsState());

  final SupplementsTypeRepository supplementsTypeRepository;

  Future<void> fetchData({required String supplementType}) async {
    emit(
      SupplementsState(
        status: Status.loading,
      ),
    );
    try {
      final supplementData =
          await supplementsTypeRepository.getSupplementsType(supplementType);

      emit(
        SupplementsState(
          status: Status.success,
          supplementsData: supplementData,
        ),
      );
    } catch (error) {
      emit(
        SupplementsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
