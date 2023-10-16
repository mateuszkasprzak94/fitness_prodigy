import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micrnonutrients/content/text_for_micronutrients_content.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/text_for_tips_content/text_for_tips_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PortionControlContent extends StatefulWidget {
  const PortionControlContent({super.key});

  @override
  State<PortionControlContent> createState() => _PortionControlContentState();
}

class _PortionControlContentState extends State<PortionControlContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Portion Control',
          style: GoogleFonts.sahitya(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(159, 27, 183, 255),
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
              image: AssetImage('images_diet/portionpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildVitamins('Portion Control:', portiondescription),
          _buildVitamins('1.	Understand Serving Sizes:  ', portion1),
          _buildVitamins('2.	Use Measuring Tools: ', portion2),
          _buildVitamins('3.	Divide Your Plate:  ', portion3),
          _buildVitamins('4.	Read Labels:  ', portion4),
          _buildVitamins('5.	Avoid Eating from Large Packages:   ', portion5),
          _buildVitamins('6.	Mindful Eating:   ', portion6),
          _buildVitamins('7.	Use Smaller Plates:    ', portion7),
          _buildVitamins('8.	Drink Water:    ', portion8),
          _buildVitamins('9.	Listen to Your Body:   ', portion9),
          _buildVitamins('10.	Practice Moderation:    ', portion10),
          _buildVitamins('', portionend),
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
          color: const Color.fromARGB(159, 27, 183, 255).withOpacity(0.75),
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
          color: Colors.white.withOpacity(0.70),
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
