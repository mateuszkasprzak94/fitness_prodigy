import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';

class WaterGlassCounterPage extends StatefulWidget {
  const WaterGlassCounterPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<WaterGlassCounterPage> createState() => _WaterGlassCounterPageState();
}

class _WaterGlassCounterPageState extends State<WaterGlassCounterPage> {
  var currentIndex = 0;
  var waterGlassCount = 0;
  var goalReached = false;
  var goal = 0;

  void _incrementWaterGlassCount() {
    setState(() {
      waterGlassCount++;
      if (waterGlassCount >= goal) {
        goalReached = true;
      }
    });
  }

  void _decrementWaterGlassCount() {
    setState(() {
      if (waterGlassCount > 0) {
        waterGlassCount--;
        if (waterGlassCount < goal) {
          goalReached = false;
        }
      }
    });
  }

  void _setGoal(int newGoal) {
    setState(() {
      goal = newGoal;
      if (waterGlassCount >= goal) {
        goalReached = true;
      } else {
        goalReached = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Water Glass Counter',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            goalReached
                ? Image.asset(
                    'images/water glass.png',
                    width: 200,
                    height: 200,
                  )
                : Image.asset(
                    'images/empty.png',
                    width: 200,
                    height: 200,
                  ),
            const SizedBox(
              height: 20,
            ),
            Text('Water Glass Count: $waterGlassCount / Goal: $goal'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementWaterGlassCount,
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: _decrementWaterGlassCount,
                  child: const Text('-'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Set Goal:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _setGoal(5),
                  child: const Text('5'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _setGoal(10),
                  child: const Text('10'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _setGoal(15),
                  child: const Text('15'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
          if (newIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ExerciseExamplesPage(user: widget.user),
              ),
            );
          } else if (newIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => WorkoutPlansPage(user: widget.user),
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
    );
  }
}
