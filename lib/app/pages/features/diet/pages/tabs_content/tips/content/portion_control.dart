import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/text_for_tips_content/text_for_tips_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class PortionControlContent extends StatelessWidget {
  const PortionControlContent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Portion Control',
          style: GoogleFonts.lobster(
            fontSize: screenWidth * 0.09,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(159, 27, 183, 255),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images_diet/portionpage.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(children: [
          _buildVitamins('Portion Control:', portiondescription),
          _buildVitamins('1.	Understand Serving Sizes:  ', portion1),
          _buildVitamins('2.	Use Measuring Tools: ', portion2),
          _buildVitamins('3.	Divide Your Plate:  ', portion3),
          _buildVitamins('4.	Read Labels:  ', portion4),
          _buildVitamins('5.	Avoid Eating from Large Packages:   ', portion5),
          _buildVitamins('6.	Mindful Eating:   ', portion6),
          _buildVitamins('7.	Use Smaller Plates:    ', portion7),
          _buildVitamins('8.	Drink Water:    ', portion8),
          _buildVitamins('9.	Listen to Your Body:   ', portion9),
          _buildVitamins('10.	Practice Moderation:    ', portion10),
          _buildVitamins('', portionend),
          const SizedBox(height: 20),
        ]),
      ),
    );
  }
}

Widget _buildVitamins(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(159, 27, 183, 255).withOpacity(0.90),
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
          padding: const EdgeInsets.all(5),
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
