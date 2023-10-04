import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

String description =
    '''Creatine is a naturally occurring compound found in small amounts in certain foods and synthesized by the body. It's stored in muscle cells and used as a quick source of energy during high-intensity, short-duration activities like weightlifting and sprinting.''';

String benefits =
    '''Creatine supplementation has been extensively studied and is known to enhance muscle strength, power, and overall exercise performance. It can also lead to increased muscle mass when combined with resistance training. Creatine may improve muscle recovery, particularly during repeated bouts of high-intensity exercise.''';

String side =
    '''Creatine is generally safe, but some people may experience mild gastrointestinal discomfort or water retention. Drinking plenty of water can help mitigate these effects.''';

String end =
    '''Remember that while creatine is a popular and well-studied supplement, individual responses can vary. It's important to consult with a healthcare professional before adding any supplement to your routine, especially if you have underlying health conditions or are taking medications.''';

class Creatine extends StatelessWidget {
  const Creatine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Creatine Monohydrate',
          style: GoogleFonts.lancelot(fontSize: 30, color: Colors.black),
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
                  'images supplements/creatine.jpg'), //add image of creatine
            ),
            const SizedBox(height: 15),
            _buildSupplements('Description:', description),
            const SizedBox(height: 15),
            _buildSupplements('Benefits:', benefits),
            const SizedBox(height: 15),
            _buildSupplements('Side Effects:', side),
            const SizedBox(height: 15),
            const Divider(
              height: 5,
              thickness: 5,
            ),
            const SizedBox(height: 15),
            Text(end),
          ],
        ),
      ),
    );
  }
}

_buildSupplements(String title, String description) {
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
