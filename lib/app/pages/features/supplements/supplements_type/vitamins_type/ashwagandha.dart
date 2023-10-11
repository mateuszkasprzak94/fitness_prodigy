import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/text_for_vitamins/text_for_vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AshwagandhaContent extends StatelessWidget {
  const AshwagandhaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ashwagandha',
          style: GoogleFonts.lancelot(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        titleSpacing: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.shade400,
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
            image: AssetImage('images_supplements/ashwagandha.jpg'),
          ),
          const SizedBox(height: 15),
          _buildSupplements1('Overview:', descriptionAshwagandha),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Health Benefits:',
              'Here are some of the key health benefits of Ashwagandha:'),
          _buildSupplements2('● Stress Reduction: ', benefits1Ashwagandha),
          _buildSupplements2('● Improved Sleep:  ', benefits2Ashwagandha),
          _buildSupplements2('● Enhanced Mood: ', benefits3Ashwagandha),
          _buildSupplements2('● Boosted Immunity: ', benefits4Ashwagandha),
          _buildSupplements2('● Anti-Inflammatory: ', benefits5Ashwagandha),
          _buildSupplements2(
              '● Improved Cognitive Function: ', benefits6Ashwagandha),
          _buildSupplements2('● Hormonal Balance: ', benefits7Ashwagandha),
          _buildSupplements2('● Antioxidant Effects:  ', benefits8Ashwagandha),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Sources:', sourceAshwagandha),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Recommended Dosage:', dosageAshwagandha),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Caution: ', cautionAshwagandha),
          const Divider(height: 5, thickness: 5),
          const SizedBox(height: 15),
          _buildSupplements1('Conclusion: ', cautionAshwagandha),
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
            color: Colors.green.shade300,
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
            color: Colors.green.shade300,
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
