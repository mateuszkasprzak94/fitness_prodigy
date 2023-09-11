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
          children: const [
            Image(
              image: AssetImage('images/step4mm.png'),
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            ExerciseExamplesButton(),
            SizedBox(height: 15),
            WorkoutPlansButton(),
            SizedBox(height: 15),
            DietButton(),
            SizedBox(height: 15),
            SupplementsButton(),
            SizedBox(height: 15),
            GoalsButton(),
            SizedBox(height: 15),
            MotivationQuotesButton(),
            SizedBox(height: 15),
            WaterGlassCounterButton(),
            SizedBox(height: 15),
            FitStopwatchButton(),
            SizedBox(height: 15),
            ProgressTrackingButton(),
            SizedBox(height: 15),
            EventPlannerButton(),
            SizedBox(height: 15),
            UserProfileButton(),
            SizedBox(height: 15),
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

class ExerciseExamplesButton extends StatelessWidget {
  const ExerciseExamplesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.accessibility,
            color: Colors.black,
          ),
          label: const Text(
            'EXERCISE EXAMPLES',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ExerciseExamplesPage(
                    user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class WorkoutPlansButton extends StatelessWidget {
  const WorkoutPlansButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.fitness_center,
            color: Colors.black,
          ),
          label: const Text(
            'WORKOUT PLANS',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    WorkoutPlansPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DietButton extends StatelessWidget {
  const DietButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.bottomRight, end: Alignment.topLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.fastfood,
            color: Colors.black,
          ),
          label: const Text(
            'DIET',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    DietPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SupplementsButton extends StatelessWidget {
  const SupplementsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.local_pharmacy,
            color: Colors.black,
          ),
          label: const Text(
            'SUPPLEMENTS',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    SupplementsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class GoalsButton extends StatelessWidget {
  const GoalsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.topRight, end: Alignment.topLeft),
        ),
        child: ElevatedButton.icon(
          icon: const ImageIcon(
            AssetImage(
              'images/goals.png',
            ),
            color: Colors.black,
          ),
          label: const Text(
            'GOALS',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    GoalsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MotivationQuotesButton extends StatelessWidget {
  const MotivationQuotesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const ImageIcon(
            AssetImage(
              'images/motivation.png',
            ),
            color: Colors.black,
          ),
          label: const Text(
            'MOTIVATION QUOTES',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => MotivationQuotesPage(
                    user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class WaterGlassCounterButton extends StatelessWidget {
  const WaterGlassCounterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const ImageIcon(
            AssetImage(
              'images/water.png',
            ),
            color: Colors.black,
          ),
          label: const Text(
            'WATER GLASS COUNTER',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => WaterGlassCounterPage(
                    user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FitStopwatchButton extends StatelessWidget {
  const FitStopwatchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.watch_rounded,
            color: Colors.black,
          ),
          label: const Text(
            'STOPWATCH',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    FitStopwatchPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProgressTrackingButton extends StatelessWidget {
  const ProgressTrackingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.hourglass_bottom,
            color: Colors.black,
          ),
          label: const Text(
            'PROGRESS TRACKING',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ProgressTrackingPage(
                    user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class EventPlannerButton extends StatelessWidget {
  const EventPlannerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.calendar_today,
            color: Colors.black,
          ),
          label: const Text(
            'EVENT PLANNER',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const EventPlannerPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class UserProfileButton extends StatelessWidget {
  const UserProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.account_box,
            color: Colors.black,
          ),
          label: const Text(
            'USER PROFILE',
            style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    UserProfilePage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
        ),
      ),
    );
  }
}
