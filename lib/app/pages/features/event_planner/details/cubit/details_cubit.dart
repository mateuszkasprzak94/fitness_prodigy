import 'package:bloc/bloc.dart';
import 'package:fitness_prodigy/app/models/event_planner_item_model.dart';
import 'package:fitness_prodigy/app/repositories/items_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_state.dart';
part 'details_cubit.freezed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsRepository) : super(DetailsState(null));

  final ItemsRepository _itemsRepository;

  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsRepository.get(id: id);
    emit(DetailsState(itemModel));
  }
}
