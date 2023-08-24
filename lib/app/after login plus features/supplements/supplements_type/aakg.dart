import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/supplements/supplements_type/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AAKGPage extends StatelessWidget {
  const AAKGPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Arginine Alpha-Ketoglutarate (AAKG)',
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
              image: AssetImage('images supplements/'), //add image of AAKG
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', aakgdescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2('Nitric Oxide Production: ', aakgbenefits1),
            _buildSupplements2('Muscle Pumps:  ', aakgbenefits2),
            _buildSupplements2('Exercise Performance: ', aakgbenefits3),
            _buildSupplements2('Muscle Recovery:  ', aakgbenefits4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Pre-Workout:', aakgusage1),
            _buildSupplements2('Dosage Timing:', aakgusage2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage:', aakgdosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Considerations:', ''),
            _buildSupplements2('Synergy:', aakgconsiderations1),
            _buildSupplements2('Diet and Lifestyle: ', aakgconsiderations2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Side Effects:', aakgsideeffects),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(
              aakgend,
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
