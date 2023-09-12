import 'package:fitness_prodigy/app/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BCAAPage extends StatelessWidget {
  const BCAAPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Branched-Chain Amino Acids (BCAAs)',
          maxLines: 2,
          style: GoogleFonts.lancelot(fontSize: 28, color: Colors.black),
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
              image: AssetImage('images supplements/'), //add image of BCAA
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', bcaadescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2('Muscle Recovery and Growth: ', bcaabenefits1),
            _buildSupplements2('Convenience: ', bcaabenefits2),
            _buildSupplements2('Appetite Control: ', bcaabenefits3),
            _buildSupplements2('Diverse Options:  ', bcaabenefits4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Post-Workout:', bcaausage1),
            _buildSupplements2('Meal Replacement:', bcaausage2),
            _buildSupplements2('Snacking:', bcaausage3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage:', bcaadosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Quality:', bcaaconsiderations1),
            _buildSupplements2('Allergies:', bcaaconsiderations2),
            _buildSupplements2('Individual Goals:', bcaaconsiderations3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(
              bcaaend,
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
