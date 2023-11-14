import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PotassiumContent extends StatelessWidget {
  const PotassiumContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Potassium',
          style: GoogleFonts.lancelot(
              fontSize: 30, color: const Color.fromARGB(255, 0, 80, 5)),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 180, 178, 64),
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
            image: AssetImage('assets/images_supplements/potassium.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', potassiumdescription),
          _buildSupplements1('Health Benefits:', potassiumbenefits),
          _buildSupplements2('Sources:', potassiumsource),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Daily Recommended Intake: ', potassiumintake),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Deficiency: ', potassiumdeficiency),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Excess Intake: ', potassiumexcess),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Note: ', potassiumnote),
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
            color: Color.fromARGB(255, 0, 80, 5),
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
            color: Color.fromARGB(255, 0, 80, 5),
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
