import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/macronutrients/content/text_for_macronutrients_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FatsContent extends StatefulWidget {
  const FatsContent({super.key});

  @override
  State<FatsContent> createState() => _FatsContentState();
}

class _FatsContentState extends State<FatsContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'FATS',
          style: GoogleFonts.sahitya(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 230, 203, 142),
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
              image: AssetImage('images_diet/fatspage.jpg'), fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildFats('Fats: Essential Nutrients for Health', fatsdescription),
          _buildFats('Types of Dietary Fats: ',
              'Dietary fats are categorized into several types, each with distinct properties:'),
          _buildFats('', fatstypes),
          _buildFats('Functions of Dietary Fats: ',
              'Fats are essential for numerous bodily functions:'),
          _buildFats('', fatsfuntions),
          _buildFats('Impact on Health: ',
              'The type and quantity of dietary fats consumed have a significant impact on health:'),
          _buildFats('', fatsimpact),
          _buildFats('Dietary Sources: ',
              'Fats can be found in various foods, both animal and plant-based:	'),
          _buildFats('', fatssource),
          _buildFats('Balanced Fat Intake: ', fatsintake),
          _buildFats('Conclusion: ', fatsconclusion),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}

Widget _buildFats(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(255, 230, 203, 142).withOpacity(0.90),
          child: Text(
            title,
            style: const TextStyle(
                color: Color.fromARGB(255, 24, 143, 28),
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
