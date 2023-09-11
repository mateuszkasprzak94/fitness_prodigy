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
            const CreatineButton(),
            const SizedBox(height: 5),
            const ProteinPowderButton(),
            const SizedBox(height: 5),
            const BCAAButton(),
            const SizedBox(height: 5),
            const AAKGButton(),
            const SizedBox(height: 5),
            const CitrullineButton(),
            const SizedBox(height: 5),
            const BetaAlanineButton(),
            const SizedBox(height: 5),
            const GlutamineButton(),
            const SizedBox(height: 5),
            const CollagenButton(),
            const SizedBox(height: 5),
            //Expanded button for Vitamins
            ExpansionTile(
              title: const Text('Vitamins'),
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Vitamin C'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Vitamin D'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Vitamin B'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Magnesium'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Omega3'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Zync'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ashwagandha'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('D3K2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CollagenButton extends StatelessWidget {
  const CollagenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const CollagenPage(),
          ),
        );
      },
      child: const Text('Collagen'),
    );
  }
}

class GlutamineButton extends StatelessWidget {
  const GlutamineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const GlutaminePage(),
          ),
        );
      },
      child: const Text('Glutamine'),
    );
  }
}

class BetaAlanineButton extends StatelessWidget {
  const BetaAlanineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const BetaAlaninePage(),
          ),
        );
      },
      child: const Text('Beta-Alanine'),
    );
  }
}

class CitrullineButton extends StatelessWidget {
  const CitrullineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const CitrullinePage(),
          ),
        );
      },
      child: const Text('Cytruline'),
    );
  }
}

class AAKGButton extends StatelessWidget {
  const AAKGButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const AAKGPage(),
          ),
        );
      },
      child: const Text('AAKG'),
    );
  }
}

class BCAAButton extends StatelessWidget {
  const BCAAButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const BCAAPage(),
          ),
        );
      },
      child: const Text('BCAA'),
    );
  }
}

class ProteinPowderButton extends StatelessWidget {
  const ProteinPowderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const ProteinPowder(),
          ),
        );
      },
      child: const Text('Protein Powder'),
    );
  }
}

class CreatineButton extends StatelessWidget {
  const CreatineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const Creatine(),
          ),
        );
      },
      child: const Text('Creatine monohydrate'),
    );
  }
}
