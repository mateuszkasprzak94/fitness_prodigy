import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/features_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';

class MotivationQuotesPage extends StatefulWidget {
  const MotivationQuotesPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<MotivationQuotesPage> createState() => _MotivationQuotesPageState();
}

class _MotivationQuotesPageState extends State<MotivationQuotesPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Motivation Quotes',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          if (newIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Features(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ExerciseExamplesPage(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => WorkoutPlansPage(
                  user: widget.user,
                ),
              ),
            );
          } else if (newIndex == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => UserProfilePage(user: widget.user),
              ),
            );
          }
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Workouts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'User Profile',
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Motivation page.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.all_inclusive),
                label: const Text(
                  'Random Quote',
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                label: const Text(
                  'Favorite Quote',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
