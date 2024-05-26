import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/text_for_tips_content/text_for_tips_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class EatingHabitsContent extends StatelessWidget {
  const EatingHabitsContent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Eating Habits',
          style: GoogleFonts.lobster(
            fontSize: screenWidth * 0.09,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 27, 46, 219),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images_diet/habitspage.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(children: [
          _buildVitamins('Eating Habits:', habitsdescription),
          _buildVitamins('1.	Mindful Eating: ', habits1),
          _buildVitamins('2.	Regular Meals: ', habits2),
          _buildVitamins('3.	Hydration: ', habits3),
          _buildVitamins('4.	Variety of Foods: ', habits4),
          _buildVitamins('5.	Portion Control: ', habits5),
          _buildVitamins('6.	Limit Processed Foods: ', habits6),
          _buildVitamins('7.	Fruits and Vegetables: ', habits7),
          _buildVitamins('8.	Whole Grains:', habits8),
          _buildVitamins('9.	Balanced Snacking: ', habits9),
          _buildVitamins('10.	Moderation: ', habits10),
          _buildVitamins('11.	Slow Eating: ', habits11),
          _buildVitamins('12.	Listen to Your Body: ', habits12),
          _buildVitamins('13.	Plan Ahead: ', habits13),
          _buildVitamins('14.	Consult a Professional: ', habits14),
          _buildVitamins('', habitsend),
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
          color: const Color.fromARGB(255, 27, 46, 219).withOpacity(0.90),
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
          padding: const EdgeInsets.all(5),
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
