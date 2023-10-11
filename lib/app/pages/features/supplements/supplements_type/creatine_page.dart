import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/text_for_supplements/text_for_supplements.dart';
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
          children: [
            const Image(
              image: AssetImage(
                  'images_supplements/creatine.jpg'), //add image of creatine
            ),
            const SizedBox(height: 15),
            _buildSupplements1('Overview:', descriptionCreatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Role in the Body::', roleCreatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Sources:', sourceCreatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Health Benefits:', ''),
            _buildSupplements2(
                '● Enhanced Muscle Performance: ', benefits1Creatine),
            _buildSupplements2('● Muscle Growth:  ', benefits2Creatine),
            _buildSupplements2('● Recovery: ', benefits3Creatine),
            _buildSupplements2('● Brain Health: ', benefits4Creatine),
            _buildSupplements2('● Neuromuscular Disorders:', benefits5Creatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Usage and Dosage: ', ''),
            _buildSupplements2('● Loading Phase:', usage1Creatine),
            _buildSupplements2('● Maintenance Phase: ', usage2Creatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Caution', cautionCreatine),
            const Divider(height: 5, thickness: 5),
            const SizedBox(height: 15),
            _buildSupplements1('Conclusion', conclusionCreatine),
            const SizedBox(height: 15),
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
          style: TextStyle(
            color: Colors.grey.shade800,
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
            color: Colors.grey.shade800,
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
