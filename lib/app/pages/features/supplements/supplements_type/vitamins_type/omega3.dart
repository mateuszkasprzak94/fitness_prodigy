import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Omega3Content extends StatelessWidget {
  const Omega3Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Omega-3 Fatty Acids',
          style: GoogleFonts.lancelot(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        titleSpacing: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black,
              Color.fromARGB(255, 206, 188, 29),
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
            image: AssetImage('images_supplements/omega3.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', descriptionOmega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Types of Omega-3 Fatty Acids:',
              'There are three main types of Omega-3 fatty acids:'),
          _buildSupplements2('1. Eicosapentaenoic Acid (EPA):', type1Omega3),
          _buildSupplements2('2. Docosahexaenoic Acid (DHA):', type2Omega3),
          _buildSupplements2('3. Alpha-Linolenic Acid (ALA):', type3Omega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Health Benefits:',
              'Omega-3 fatty acids offer a wide range of health benefits, including:'),
          _buildSupplements2('● Heart Health:   ', benefits1Omega3),
          _buildSupplements2('● Brain Health: ', benefits2Omega3),
          _buildSupplements2('● Inflammation:', benefits3Omega3),
          _buildSupplements2('● Eye Health:', benefits4Omega3),
          _buildSupplements2('● Mood and Mental Health: ', benefits5Omega3),
          _buildSupplements2('● Skin Health: ', benefits6Omega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Sources:', sourceOmega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Supplementation:', supplementationOmega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Dosage:', intakeOmega3),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Caution:', cautionOmega3),
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
            color: Color.fromARGB(255, 206, 188, 29),
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
            color: Color.fromARGB(255, 206, 188, 29),
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
