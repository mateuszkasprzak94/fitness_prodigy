import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/repositories/items_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_state.dart';
part 'add_cubit.freezed.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this._itemsRepository) : super(AddState());

  final ItemsRepository _itemsRepository;

  Future<void> add(
    String title,
    String imageURL,
    DateTime releaseDate,
  ) async {
    try {
      await _itemsRepository.add(title, imageURL, releaseDate);
      emit(AddState(saved: true));
    } catch (error) {
      emit(AddState(errorMessage: error.toString()));
    }
  }
}
