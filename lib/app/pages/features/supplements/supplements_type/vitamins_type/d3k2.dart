import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class D3k2Content extends StatelessWidget {
  const D3k2Content({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vitamin D3 (Cholecalciferol) and Vitamin K2 (Menakinone)',
          style: GoogleFonts.lancelot(
              fontSize: screenWidth / 15, color: Colors.black),
          maxLines: 2,
        ),
        centerTitle: true,
        titleSpacing: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange.shade400,
              Colors.orange.shade300,
              Colors.yellow.shade100,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
          child: ListView(
        children: [
          const Image(
            image: AssetImage('assets/images_supplements/d3k2.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', descriptionD3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Vitamin D3 (Cholecalciferol):', ''),
          _buildSupplements2('1. Role in the Body: ', benefits1D3k2),
          _buildSupplements2('2. Sources:   ', benefits2D3k2),
          _buildSupplements2('3. Health Benefits: ', benefits3D3k2),
          _buildSupplements1('Overview:', descriptionD3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements2('Vitamin K2 (Menakinone):', ''),
          _buildSupplements2('1. Role in the Body: ', benefits4D3k2),
          _buildSupplements2('2. Sources:', benefits5D3k2),
          _buildSupplements2('3. Health Benefits: ', benefits6D3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Synergy:', synergyD3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Recommended Intake:', intakeD3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Caution: ', cautionD3k2),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Conclusion: ', cautionD3k2),
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
            color: Colors.orange.shade400,
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
            color: Colors.orange.shade400,
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
