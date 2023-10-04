import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BetaAlaninePage extends StatelessWidget {
  const BetaAlaninePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Beta-Alanine',
          maxLines: 2,
          style: GoogleFonts.lancelot(fontSize: 40, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Image(
              image: AssetImage(
                  'images supplements/beta.jpg'), //add image of Beta-Alanine
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', betadescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2('Improved Endurance: ', betabenefits1),
            _buildSupplements2('Reduced Fatigue: ', betabenefits2),
            _buildSupplements2('Anaerobic Performance:  ', bcaabenefits3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Pre-Workout Loading:', betausage1),
            _buildSupplements2('Maintenance:', betausage2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage Timing:', betadosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Considerations:', ''),
            _buildSupplements2('Tingling Sensation: ', betaconsiderations1),
            _buildSupplements2(
                'Combination with Creatine:   ', betaconsiderations2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Side Effects:', betasideeffects),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(
              betaend,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

_buildSupplements1(String title, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
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
  );
}

_buildSupplements2(String title, String description) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
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
  );
}
