import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminDContent extends StatelessWidget {
  const VitaminDContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vitamin D(The Sunshine Vitamin)',
          style: GoogleFonts.lancelot(fontSize: 26, color: Colors.black),
        ),
        centerTitle: true,
        titleSpacing: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
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
            image: AssetImage('images supplements/vitamin_d.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', descriptionVitaminD),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Benefits:', ''),
          _buildSupplements2('Bone Health: ', benefits1VitaminD),
          _buildSupplements2('Immune System Support: ', benefits2VitaminD),
          _buildSupplements2('Mood Regulation:', benefits3VitaminD),
          _buildSupplements2('Heart Health:', benefits4VitaminD),
          _buildSupplements2('Cancer Prevention:', benefits5VitaminD),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Sources:', sourceVitaminD),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Supplementation:', supplementationVitaminD),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Recommended Daily Intake:', intakeVitaminD),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Caution:', cautionVitaminD),
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
            color: Colors.orange,
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
            color: Colors.orange,
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
