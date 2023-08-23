import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/features_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/supplements/supplements_type/creatine.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/user_profile/user_profile_page.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplementsPage extends StatefulWidget {
  const SupplementsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<SupplementsPage> createState() => _SupplementsPageState();
}

class _SupplementsPageState extends State<SupplementsPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Supplements',
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
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Creatine monohydrate'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Protein Powder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('BCAA'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('AAKG'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Cytruline'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Beta-Alanine'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Glutamine'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) =>
                        Creatine(user: FirebaseAuth.instance.currentUser!),
                  ),
                );
              },
              child: const Text('Collagen'),
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
        selectedItemColor: Colors.amber,
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
