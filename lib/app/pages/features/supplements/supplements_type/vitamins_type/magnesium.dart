import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MagnesiumContent extends StatelessWidget {
  const MagnesiumContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Magnesium',
          style: GoogleFonts.lancelot(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        titleSpacing: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
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
            image: AssetImage('images supplements/magnesium.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', descriptionMagnesium),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Benefits:',
              'Here are some of the key benefits associated with magnesium:'),
          _buildSupplements2(
              '● Muscle and Nerve Function:  ', benefits1Magnesium),
          _buildSupplements2('● Bone Health:', benefits2Magnesium),
          _buildSupplements2('● Heart Health:', benefits3Magnesium),
          _buildSupplements2('● Energy Production:', benefits4Magnesium),
          _buildSupplements2('● Relaxation and Sleep:', benefits5Magnesium),
          _buildSupplements2('● Digestive Health: ', benefits6Magnesium),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Sources:', sourceMagnesium),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Supplementation:', supplementationMagnesium),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Recommended Daily Intake:', intakeMagnesium),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Caution:', cautionMagnesium),
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
          style: TextStyle(
            color: Colors.blue.shade300,
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
          style: TextStyle(
            color: Colors.blue.shade300,
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
