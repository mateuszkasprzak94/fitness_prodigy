import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/abs_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/advanced_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/back_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/beginner_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/biceps_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/chest_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/forearms_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/intermediate_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/legs_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/shoulders_workout_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_pages/triceps_workout_page.dart';
import 'package:fitness_prodigy/app/models/button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPlansPage extends StatefulWidget {
  const WorkoutPlansPage({
    Key? key,
    // required this.user,
  }) : super(key: key);

  // final User user;

  @override
  State<WorkoutPlansPage> createState() => _WorkoutPlansPageState();
}

class _WorkoutPlansPageState extends State<WorkoutPlansPage> {
  var currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Workout Plans',
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          customWorkoutButton(
            title: 'Beginner Workout',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BeginnerWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Intermediate Workout',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const IntermediateWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Advanced Workout',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AdvancedWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Chest',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ChestWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Back',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BackWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Shoulders',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ShouldersWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Biceps',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const BicepsWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Triceps',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const TricepsWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Forearms',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ForearmsWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Legs',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const LegsWorkoutPage(),
                ),
              );
            },
          ),
          const SizedBox(height: 15),
          customWorkoutButton(
            title: 'Abs',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const AbsWorkoutPage(),
                ),
              );
            },
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: currentIndex,
      //   onTap: (newIndex) {
      //     setState(() {
      //       currentIndex = newIndex;
      //     });
      //     // if (newIndex == 0) {
      //     //   Navigator.push(
      //     //     context,
      //     //     MaterialPageRoute(
      //     //       builder: (_) => Features(
      //     //         user: widget.user,
      //     //       ),
      //     //     ),
      //     //   );
      //     // } else if (newIndex == 1) {
      //     //   Navigator.push(
      //     //     context,
      //     //     MaterialPageRoute(
      //     //       builder: (_) => ExerciseExamplesPage(user: widget.user),
      //     //     ),
      //     //   );
      //     // } else if (newIndex == 3) {
      //     //   Navigator.push(
      //     //     context,
      //     //     MaterialPageRoute(
      //     //       builder: (_) => UserProfilePage(user: widget.user),
      //     //     ),
      //     //   );
      //     // }
      //   },
      //   selectedItemColor: Colors.amber,
      //   unselectedItemColor: Colors.black,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.accessibility),
      //       label: 'Exercises',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.fitness_center),
      //       label: 'Workouts',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_box),
      //       label: 'User Profile',
      //     ),
      //   ],
      // ),
    );
  }
}
