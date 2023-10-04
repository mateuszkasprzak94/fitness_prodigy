import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CollagenPage extends StatelessWidget {
  const CollagenPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Collagen',
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
                  'images supplements/collagen.jpg'), //add image of Collagen
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', collagendescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2('Skin Health:', collagenbenefits1),
            _buildSupplements2('Joint Health:', collagenbenefits2),
            _buildSupplements2('Bone Health:', collagenbenefits3),
            _buildSupplements2('Hair and Nails:', collagenbenefits4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Beauty:', collagenusage1),
            _buildSupplements2('Joint Support: ', collagenusage2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage:', collagendosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Considerations:', ''),
            _buildSupplements2('Types of Collagen:', collagenconsiderations1),
            _buildSupplements2('Digestibility:', collagenconsiderations2),
            _buildSupplements2('Synergy::', collagenconsiderations3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Side Effects:', collagensideeffects),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(
              collagenend,
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
