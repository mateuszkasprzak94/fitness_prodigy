import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/text_for_tips_content/text_for_tips_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlanningContent extends StatefulWidget {
  const MealPlanningContent({super.key});

  @override
  State<MealPlanningContent> createState() => _MealPlanningContentState();
}

class _MealPlanningContentState extends State<MealPlanningContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Meal Planning',
          style: GoogleFonts.sahitya(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 57, 173, 119),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images_diet/planningpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildVitamins('Meal Planning:', planningdescription),
          _buildVitamins('1.	Set Your Goals:   ', planning1),
          _buildVitamins('2.	Create a Weekly Menu:  ', planning2),
          _buildVitamins('3.	Balance Nutrients:   ', planning3),
          _buildVitamins('4.	Choose Recipes:   ', planning4),
          _buildVitamins('5.	Prepare a Shopping List:  ', planning5),
          _buildVitamins('6.	Cook in Batches: ', planning6),
          _buildVitamins('7.	Embrace Leftovers: ', planning7),
          _buildVitamins('8.	Use Portion Control: ', planning8),
          _buildVitamins('9.	Flexibility is Key: ', planning9),
          _buildVitamins('10.	Experiment and Enjoy: ', planning10),
          _buildVitamins('', planningend),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}

Widget _buildVitamins(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(255, 57, 173, 119).withOpacity(0.90),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          ),
        ),
        Container(
          color: Colors.white.withOpacity(0.90),
          child: Text(
            description,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
