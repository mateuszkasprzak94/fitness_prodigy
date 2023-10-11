import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ProteinPowder extends StatelessWidget {
  const ProteinPowder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Protein Powder',
          style: GoogleFonts.lancelot(fontSize: 30, color: Colors.black),
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
          children: [
            const Image(
              image: AssetImage(
                  'images_supplements/protein.jpg'), //add image of protein powder
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', proteindescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2(
                'Muscle Recovery and Growth: ', proteinbenefits1),
            _buildSupplements2('Convenience: ', proteinbenefits2),
            _buildSupplements2('Appetite Control: ', proteinbenefits3),
            _buildSupplements2('Diverse Options:  ', proteinbenefits4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Types:', ''),
            _buildSupplements2('Whey Protein:', proteintype1),
            _buildSupplements2('Casein Protein:', proteintype2),
            _buildSupplements2('Plant-Based Proteins:', proteintype3),
            _buildSupplements2('Egg White Protein', proteintype4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Post-Workout:', proteinusage1),
            _buildSupplements2('Meal Replacement:', proteinusage2),
            _buildSupplements2('Snacking:', proteinusage3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage:', proteindosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Quality:', proteinconsiderations1),
            _buildSupplements2('Allergies:', proteinconsiderations2),
            _buildSupplements2('Individual Goals:', proteinconsiderations3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(proteinend),
          ],
        ),
      ),
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
