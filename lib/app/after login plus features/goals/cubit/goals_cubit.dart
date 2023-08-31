import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'goals_state.dart';

class GoalsCubit extends Cubit<GoalsState> {
  GoalsCubit() : super(GoalsInitial());
}
