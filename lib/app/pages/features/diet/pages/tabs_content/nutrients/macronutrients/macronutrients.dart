import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Macronutrients extends StatefulWidget {
  const Macronutrients({super.key});

  @override
  State<Macronutrients> createState() => _MacronutrientsState();
}

class _MacronutrientsState extends State<Macronutrients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Macronutrients',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(162, 79, 216, 102),
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
                image: AssetImage('images_diet/macronutrients.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const Macronutrients(),
                          ),
                        );
                      },
                      child: Ink.image(
                        image:
                            const AssetImage('images_diet/protein_button.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage('images_diet/carbs.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage('images_diet/fats.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'FATS',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
