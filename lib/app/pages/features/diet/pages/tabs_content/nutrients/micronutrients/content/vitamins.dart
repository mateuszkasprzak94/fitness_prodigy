import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micronutrients/content/text_for_micronutrients_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminsContent extends StatefulWidget {
  const VitaminsContent({super.key});

  @override
  State<VitaminsContent> createState() => _VitaminsContentState();
}

class _VitaminsContentState extends State<VitaminsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Vitamins',
          style: GoogleFonts.sahitya(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 79, 12, 236),
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
              image: AssetImage('images_diet/vitaminspage.jpg'),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildVitamins('Vitamins:', vitaminsdescription),
          _buildVitamins('1.	Fat-Soluble Vitamins: ', vitaminstype1),
          _buildVitamins('2.	Water-Soluble Vitamins:', vitaminstype2),
          _buildVitamins('Benefits of Vitamins: ', vitaminsbenefits),
          _buildVitamins('Daily Recommendations: ', vitaminsdaily),
          _buildVitamins('Note:  ', vitaminsnote),
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
          color: const Color.fromARGB(255, 79, 12, 236).withOpacity(0.90),
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
