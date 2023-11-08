import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/macronutrients/content/text_for_macronutrients_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ProteinContent extends StatefulWidget {
  const ProteinContent({super.key});

  @override
  State<ProteinContent> createState() => _ProteinContentState();
}

class _ProteinContentState extends State<ProteinContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Protein',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(161, 79, 166, 216),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images_diet/proteinpage.jpg'),
              fit: BoxFit.cover),
        ),
        child: ListView(children: [
          _buildProtein(
              'Proteins: The Building Blocks of Life', proteindescription),
          _buildProtein('Chemical Structure: ', proteinstructure),
          _buildProtein('•	Essential Amino Acids ', proteinamino1),
          _buildProtein('•	Non-essential Amino Acids', proteinamino2),
          _buildProtein('Functions of Proteins: ',
              'Proteins have a diverse set of functions in the body:'),
          _buildProtein('', proteinfunction),
          _buildProtein('Sources of Protein: ',
              'Protein can be obtained from a variety of dietary sources:'),
          _buildProtein('', proteinsource),
          _buildProtein('Protein and Health: ',
              'Protein plays a crucial role in maintaining and promoting good health. Consuming an adequate amount of protein is essential for:'),
          _buildProtein('', proteinhealth),
          _buildProtein('Daily Protein Needs: ', proteindaily),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}

Widget _buildProtein(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(161, 79, 166, 216).withOpacity(0.90),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          ),
        ),
        Container(
          color: Colors.white.withOpacity(0.90),
          child: Text(
            description,
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 15),
          ),
        ),
      ],
    ),
  );
}
