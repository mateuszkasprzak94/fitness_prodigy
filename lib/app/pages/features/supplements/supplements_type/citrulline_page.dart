import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CitrullinePage extends StatelessWidget {
  const CitrullinePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Citrulline',
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
          children: [
            const Image(
              image: AssetImage('assets/images_supplements/cytruline.jpg'),
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Description:', citrullinedescription),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Benefits:', ''),
            _buildSupplements2(
                'Nitric Oxide Production: ', citrullinebenefits1),
            _buildSupplements2('Exercise Performance: ', citrullinebenefits2),
            _buildSupplements2('Muscle Recovery:  ', citrullinebenefits3),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage:', ''),
            _buildSupplements2('Pre-Workout:', citrullineusage1),
            _buildSupplements2('Dosage Timing:', citrullineusage2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Dosage:', citrullinedosage),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Considerations:', ''),
            _buildSupplements2('Forms: ', citrullineconsiderations1),
            _buildSupplements2('Synergy:  ', citrullineconsiderations2),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Side Effects:', citrullinesideeffects),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                citrullineend,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 10),
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
