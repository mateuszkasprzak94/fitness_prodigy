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
            const CreatineButton(),
            const SizedBox(height: 10),
            const ProteinPowderButton(),
            const SizedBox(height: 10),
            const BCAAButton(),
            const SizedBox(height: 10),
            const AAKGButton(),
            const SizedBox(height: 10),
            const CitrullineButton(),
            const SizedBox(height: 10),
            const BetaAlanineButton(),
            const SizedBox(height: 10),
            const GlutamineButton(),
            const SizedBox(height: 10),
            const CollagenButton(),
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

class CollagenButton extends StatelessWidget {
  const CollagenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CollagenPage(),
              ),
            );
          },
          child: const Text(
            'Collagen',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class GlutamineButton extends StatelessWidget {
  const GlutamineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const GlutaminePage(),
              ),
            );
          },
          child: const Text(
            'Glutamine',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class BetaAlanineButton extends StatelessWidget {
  const BetaAlanineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const BetaAlaninePage(),
              ),
            );
          },
          child: const Text(
            'Beta-Alanine',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class CitrullineButton extends StatelessWidget {
  const CitrullineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CitrullinePage(),
              ),
            );
          },
          child: const Text(
            'Cytruline',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class AAKGButton extends StatelessWidget {
  const AAKGButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const AAKGPage(),
              ),
            );
          },
          child: const Text(
            'AAKG',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class BCAAButton extends StatelessWidget {
  const BCAAButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const BCAAPage(),
              ),
            );
          },
          child: const Text(
            'BCAA',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class ProteinPowderButton extends StatelessWidget {
  const ProteinPowderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const ProteinPowder(),
              ),
            );
          },
          child: const Text(
            'Protein Powder',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class CreatineButton extends StatelessWidget {
  const CreatineButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: const ShapeDecoration(
          shape: shape,
          gradient: LinearGradient(colors: [
            Color.fromARGB(164, 0, 0, 0),
            Colors.white,
          ], begin: Alignment.centerRight, end: Alignment.centerLeft),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const Creatine(),
              ),
            );
          },
          child: const Text(
            'Creatine monohydrate',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
