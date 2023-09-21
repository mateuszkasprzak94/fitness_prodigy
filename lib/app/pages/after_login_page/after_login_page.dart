import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/pages/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/pages/features/features_page.dart';
import 'package:fitness_prodigy/app/pages/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';

class AfterLogin extends StatefulWidget {
  const AfterLogin({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<AfterLogin> createState() => _AfterLoginState();
}

class _AfterLoginState extends State<AfterLogin> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const Features(),
      const ExerciseExamplesPage(),
      const WorkoutPlansPage(),
      UserProfilePage(email: widget.user.email),
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'User Profile',
          ),
        ],
      ),
    );
  }
}
