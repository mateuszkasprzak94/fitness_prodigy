import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class GlutaminePage extends StatelessWidget {
  const GlutaminePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Glutamine',
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
                  'images supplements/glutamine.png'), //add image of Glutamine
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', glutaminedescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2('Muscle Recovery: ', glutaminebenefits1),
            _buildSupplements2('Immune Function: ', glutaminebenefits2),
            _buildSupplements2('Digestive Health:  ', glutaminebenefits3),
            _buildSupplements2('Nitrogen Balance:   ', glutaminebenefits4),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Post-Workout:', glutamineusage1),
            _buildSupplements2('Stressful Periods: ', glutamineusage2),
            _buildSupplements2('Gastrointestinal Health: ', glutamineusage3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage Timing:', glutaminedosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Considerations:', ''),
            _buildSupplements2('Natural Sources:  ', glutamineconsiderations1),
            _buildSupplements2(
                'Stress and Illness: ', glutamineconsiderations2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Side Effects:', glutaminesideeffects),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            Text(
              glutamineend,
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
