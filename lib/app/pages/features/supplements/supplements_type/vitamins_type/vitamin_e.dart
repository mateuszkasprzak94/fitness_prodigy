import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminEContent extends StatelessWidget {
  const VitaminEContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vitamin E',
          style: GoogleFonts.lancelot(
              fontSize: 30, color: const Color.fromARGB(255, 185, 128, 3)),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 47, 68, 107),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
          child: ListView(
        children: [
          const Image(
            image: AssetImage('images_supplements/vitamin_e.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', vitaminedescription),
          _buildSupplements1('Health Benefits:', vitaminebenefits),
          _buildSupplements2('Sources:', vitaminesource),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Daily Recommended Intake: ', vitamineintake),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Deficiency: ', vitaminedeficiency),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Excess Intake: ', vitamineexcess),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Note: ', vitaminenote),
          const SizedBox(height: 15),
        ],
      )),
    );
  }
}

_buildSupplements1(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 185, 128, 3),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 17,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        )
      ],
    ),
  );
}

_buildSupplements2(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color.fromARGB(255, 185, 128, 3),
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            fontStyle: FontStyle.normal,
          ),
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}
