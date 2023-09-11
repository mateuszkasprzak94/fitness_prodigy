import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/abs_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/back_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/biceps_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/chest_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/forearms_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/legs_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/shoulders_page.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/muscle_anatomy/triceps_page.dart';
import 'package:fitness_prodigy/app/features/features_page.dart';
import 'package:fitness_prodigy/app/features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseExamplesPage extends StatefulWidget {
  const ExerciseExamplesPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<ExerciseExamplesPage> createState() => _ExerciseExamplesPageState();
}

class _ExerciseExamplesPageState extends State<ExerciseExamplesPage> {
  var currentIndex = 1;

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: const [
              ChestButton(),
              SizedBox(height: 10),
              BackButton(),
              SizedBox(height: 10),
              ShouldersButton(),
              SizedBox(height: 10),
              BicepsButton(),
              SizedBox(height: 10),
              TricepsButton(),
              SizedBox(height: 10),
              ForearmsButton(),
              SizedBox(height: 10),
              LegsButton(),
              SizedBox(height: 10),
              AbsButton(),
            ],
          ),
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

class ChestButton extends StatelessWidget {
  const ChestButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    ChestPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/chest.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Chest',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    BackPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/back.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Back',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShouldersButton extends StatelessWidget {
  const ShouldersButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    ShouldersPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/shoulders.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Shoulders',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BicepsButton extends StatelessWidget {
  const BicepsButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    BicepsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/biceps.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Biceps',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TricepsButton extends StatelessWidget {
  const TricepsButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    TricepsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/triceps.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Triceps',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForearmsButton extends StatelessWidget {
  const ForearmsButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    ForearmsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/forearms.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Forearms',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LegsButton extends StatelessWidget {
  const LegsButton({
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
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) =>
                    LegsPage(user: FirebaseAuth.instance.currentUser!),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),

            /// deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'exercise examples page images/legs.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(width: 10),
              const Text(
                'Legs',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AbsButton extends StatelessWidget {
  const AbsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Container(
      decoration: const ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AbsPage(user: FirebaseAuth.instance.currentUser!),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),

          ///deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'exercise examples page images/abs.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 10),
            const Text(
              'Abs',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
