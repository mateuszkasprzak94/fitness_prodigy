import 'package:fitness_prodigy/app/features/supplements/model/supplements_model.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/aakg_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/bcaa_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/beta_alanine_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/collagen_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/creatine_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/citrulline_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/glutamine_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_type/protein_powder_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplementsPage extends StatefulWidget {
  const SupplementsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SupplementsPage> createState() => _SupplementsPageState();
}

class _SupplementsPageState extends State<SupplementsPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Supplements',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
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
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Creatine Monohydrate',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const Creatine(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Protein Powder',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const ProteinPowder(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'BCAA',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const BCAAPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'AAKG',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const AAKGPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Cytruline',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const CitrullinePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Beta-Alanine',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const BetaAlaninePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Glutamine',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const GlutaminePage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            customSupplementsButton(
              text: 'Collagen',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const CollagenPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            //Expanded button for Vitamins
            ExpansionTile(
              title: const Text(
                'Vitamins',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                customButtonExpansionTile(text: 'Vitamin C', onPressed: () {}),
                customButtonExpansionTile(text: 'Vitamin D', onPressed: () {}),
                customButtonExpansionTile(text: 'Vitamin B', onPressed: () {}),
                customButtonExpansionTile(text: 'Magnesium', onPressed: () {}),
                customButtonExpansionTile(text: 'Omega 3', onPressed: () {}),
                customButtonExpansionTile(text: 'Zync', onPressed: () {}),
                customButtonExpansionTile(
                    text: 'Ashwagandha', onPressed: () {}),
                customButtonExpansionTile(text: 'D3K2', onPressed: () {}),
                const SizedBox(height: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
