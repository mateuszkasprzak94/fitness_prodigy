import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/data/remote_data_sources/exercises_examples_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/exercise_gridview_details_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/exercises_examples_repository.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/cubit/muscle_anatomy_cubit.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/muscle_anatomy/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MuscleAnatomyContent extends StatelessWidget {
  const MuscleAnatomyContent({
    super.key,
    required this.exerciseIndex,
  });

  final int exerciseIndex;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocProvider(
        create: (context) => MuscleAnatomyCubit(
            exercisesExamplesRepository: ExercisesExamplesRepository(
                remoteDataSource: ExercisesExamplesMockedDataSource()))
          ..fetchExerciseData(
              muscleName: exerciseGridViewDetails[exerciseIndex].muscleName),
        child: BlocBuilder<MuscleAnatomyCubit, MuscleAnatomyState>(
          builder: (context, state) {
            final exerciseModel = state.exercisesData;

            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              case Status.success:
                if (exerciseModel.isEmpty) {
                  return const Center(
                    child: Text('No data found'),
                  );
                }
                return Scaffold(
                  appBar: AppBar(
                    title: AutoSizeText(
                      'Exercise Examples',
                      style: GoogleFonts.lobster(
                        fontSize: screenWidth * 0.08,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      minFontSize: 15,
                    ),
                    centerTitle: true,
                    flexibleSpace: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(164, 0, 0, 0),
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                    systemOverlayStyle: SystemUiOverlayStyle.light,
                    titleSpacing: 0,
                  ),
                  body: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: kHomeGradient,
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                    ),
                    child: ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        for (final exercise in exerciseModel)
                          ExerciseItemWidget(
                            exerciseModel: exercise,
                            index: exerciseIndex,
                          ),
                      ],
                    ),
                  ),
                );
              case Status.error:
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Unknown error',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
