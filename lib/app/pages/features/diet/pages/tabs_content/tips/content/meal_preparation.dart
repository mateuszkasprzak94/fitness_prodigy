import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/text_for_tips_content/text_for_tips_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPreparationContent extends StatefulWidget {
  const MealPreparationContent({super.key});

  @override
  State<MealPreparationContent> createState() => _MealPreparationContentState();
}

class _MealPreparationContentState extends State<MealPreparationContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Meal Preparation',
          style: GoogleFonts.sahitya(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 83, 83, 83),
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
              image: AssetImage('assets/images_diet/preparationpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildVitamins('Meal Preparation:', mealdescription),
          _buildVitamins('1.	Plan Your Meals: ', meal1),
          _buildVitamins('2.	Create a Shopping List: ', meal2),
          _buildVitamins('3.	Batch Cooking: ', meal3),
          _buildVitamins('4.	Use Proper Storage: ', meal4),
          _buildVitamins('5.	Pre-cut and Wash: ', meal5),
          _buildVitamins('6.	Pre-portion Snacks: ', meal6),
          _buildVitamins('7.	Slow Cooker and Instant Pot: ', meal7),
          _buildVitamins('8.	Freeze for Later: ', meal8),
          _buildVitamins('9.	Get Creative: ', meal9),
          _buildVitamins('10.	Stay Organized: ', meal10),
          _buildVitamins('11.	Include Variety: ', meal11),
          _buildVitamins('12.	Allergen Considerations: ', meal12),
          _buildVitamins('13.	Safety First: ', meal13),
          _buildVitamins('14.	Family Involvement:  ', meal14),
          _buildVitamins('15.	Pack to Go: ', meal15),
          _buildVitamins('', mealend),
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
          color: const Color.fromARGB(255, 83, 83, 83).withOpacity(0.90),
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
