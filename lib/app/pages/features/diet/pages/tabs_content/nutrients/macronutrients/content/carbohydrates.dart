import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/macronutrients/content/text_for_macronutrients_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CarbohydratesContent extends StatelessWidget {
  const CarbohydratesContent({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Carbohydrates',
          style: GoogleFonts.lobster(
            fontSize: screenWidth * 0.09,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(160, 216, 179, 79),
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
            image: const AssetImage('assets/images_diet/carbspage.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40),
              BlendMode.darken,
            ),
          ),
        ),
        child: ListView(
          children: [
            _buildCarbohydrates(
                "Carbohydrates: The Body's Primary Energy Source",
                carbodescription),
            _buildCarbohydrates('Types of Carbohydrates: ',
                'Carbohydrates can be categorized into two main types based on their chemical structure:'),
            _buildCarbohydrates('', carbotypes),
            _buildCarbohydrates('Functions of Carbohydrates: ',
                'Carbohydrates are essential for various bodily functions:'),
            _buildCarbohydrates('', carbofunction),
            _buildCarbohydrates('Impact on Health: ',
                'The type and quantity of carbohydrates consumed have a significant impact on health:'),
            _buildCarbohydrates('', carboimpact),
            _buildCarbohydrates('Dietary Sources: ',
                'Carbohydrates can be found in a wide range of foods:'),
            _buildCarbohydrates('', carbosource),
            _buildCarbohydrates('Balanced Carbohydrate Intake: ', carbointake),
            _buildCarbohydrates('Conclusion: ', carboconclusion),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _buildCarbohydrates(String title, String description) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color.fromARGB(160, 216, 179, 79).withOpacity(0.90),
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
