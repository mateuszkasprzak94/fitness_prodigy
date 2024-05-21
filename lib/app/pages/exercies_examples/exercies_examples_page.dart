import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/abs_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/back_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/biceps_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/chest_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/forearms_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/legs_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/shoulders_page.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/muscle_anatomy/triceps_page.dart';
import 'package:fitness_prodigy/app/domain/models/button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseExamplesPage extends StatefulWidget {
  const ExerciseExamplesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ExerciseExamplesPage> createState() => _ExerciseExamplesPageState();
}

class _ExerciseExamplesPageState extends State<ExerciseExamplesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Exercise Examples',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          children: [
            customExerciseButton(
                title: 'Chest',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ChestPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/chest.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Back',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const BackPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/back.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Shoulders',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ShouldersPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/shoulders.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Biceps',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const BicepsPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/biceps.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Triceps',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const TricepsPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/triceps.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Forearms',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ForearmsPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/forearms.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Legs',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const LegsPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/legs.png'),
            const SizedBox(height: 5),
            customExerciseButton(
                title: 'Abs',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const AbsPage(),
                    ),
                  );
                },
                image: 'assets/exercise_examples_page_images/abs.png'),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
