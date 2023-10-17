import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/aakg_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/bcaa_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/beta_alanine_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/collagen_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/creatine_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/citrulline_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/glutamine_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/protein_powder_page.dart';
import 'package:fitness_prodigy/app/models/button_model.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/ashwagandha.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/d3k2.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/magnesium.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/omega3.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/vitamin_a.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/vitamin_b.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/vitamin_c.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/vitamin_d.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/vitamin_e.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_type/vitamins_type/zinc.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  'Vitamins & Minerals',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  customButtonExpansionTile(
                      text: 'Vitamin A',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const VitaminAContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Vitamin B',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const VitaminBContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Vitamin C',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const VitaminCContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Vitamin D',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const VitaminDContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Vitamin E',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const VitaminEContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Magnesium',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const MagnesiumContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Omega 3',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const Omega3Content()));
                      }),
                  customButtonExpansionTile(
                      text: 'Zinc',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const ZincContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'Ashwagandha',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const AshwagandhaContent()));
                      }),
                  customButtonExpansionTile(
                      text: 'D3K2',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const D3k2Content()));
                      }),
                  const SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
