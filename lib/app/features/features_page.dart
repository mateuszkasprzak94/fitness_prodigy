import 'package:fitness_prodigy/app/features/diet/diet_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/features/motivation_quotes/motivations_quotes_page.dart';
import 'package:fitness_prodigy/app/features/progress_tracking/progress_tracking_page.dart';
import 'package:fitness_prodigy/app/features/event_planner/event_planner_page/page/event_planner_page.dart';
import 'package:fitness_prodigy/app/features/stopwatch/stopwatch_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_page.dart';
import 'package:fitness_prodigy/app/features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/features/water_glass_counter/water_glass_counter_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
import 'package:fitness_prodigy/app/models/button_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatefulWidget {
  const Features({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '# Fitness Prodigy',
          style: GoogleFonts.lobster(fontSize: 40, color: Colors.black),
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
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            const Image(
              image: AssetImage('images/step4mm.png'),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            customFeaturesButton(
                title: 'DIET',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DietPage(),
                    ),
                  );
                },
                icon: Icons.fastfood),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'SUPPLEMENTS',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SupplementsPage(),
                    ),
                  );
                },
                icon: Icons.local_pharmacy),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'GOALS',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const GoalsPage(),
                    ),
                  );
                },
                assetImage: 'images/goals.png'),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'MOTIVATION QUOTES',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MotivationQuotesPage(),
                    ),
                  );
                },
                assetImage: 'images/motivation.png'),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'WATER GLASS COUNTER',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const WaterGlassCounterPage(),
                    ),
                  );
                },
                assetImage: 'images/water.png'),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'STOPWATCH',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FitStopwatchPage(),
                    ),
                  );
                },
                icon: Icons.watch_rounded),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'PROGRESS TRACKING',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ProgressTrackingPage(),
                    ),
                  );
                },
                icon: Icons.hourglass_bottom),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'EVENT PLANNER',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const EventPlannerPage(),
                    ),
                  );
                },
                icon: Icons.calendar_today),
            const SizedBox(height: 5),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
