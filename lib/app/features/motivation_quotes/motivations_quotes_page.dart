import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fitness_prodigy/app/features/exercies_examples/exercies_examples_page.dart';
// import 'package:fitness_prodigy/app/features/features_page.dart';
// import 'package:fitness_prodigy/app/features/user_profile/user_profile_page.dart';
// import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Motivation Quotes',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(colors: [
            //     Color.fromARGB(164, 0, 0, 0),
            //     Colors.white,
            //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            // ),
            ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.white,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: currentIndex,
      //   onTap: (newIndex) {
      //     setState(() {
      //       currentIndex = newIndex;
      //     });
      //     if (newIndex == 0) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Features(
      //             user: widget.user,
      //           ),
      //         ),
      //       );
      //     } else if (newIndex == 1) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => ExerciseExamplesPage(
      //             user: widget.user,
      //           ),
      //         ),
      //       );
      //     } else if (newIndex == 2) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => WorkoutPlansPage(
      //             user: widget.user,
      //           ),
      //         ),
      //       );
      //     } else if (newIndex == 3) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => UserProfilePage(user: widget.user),
      //         ),
      //       );
      //     }
      //   },
      //   selectedItemColor: Colors.black,
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Motivation page.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: ListView(
            children: const [
              SizedBox(height: 15),
              RandomQuoteButton(),
              SizedBox(height: 15),
              FavoriteQuoteButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteQuoteButton extends StatelessWidget {
  const FavoriteQuoteButton({
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
            Color.fromARGB(255, 49, 49, 49),
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        label: const Text(
          'FAVORITE QUOTE',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}

class RandomQuoteButton extends StatelessWidget {
  const RandomQuoteButton({
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
            Color.fromARGB(255, 49, 49, 49),
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.all_inclusive,
          color: Colors.amber,
        ),
        label: const Text(
          'RANDOM QUOTE',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
