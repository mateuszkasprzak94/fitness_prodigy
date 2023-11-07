import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/macronutrients/macronutrients.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micrnonutrients/micronutrients.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutrientsTabPage extends StatefulWidget {
  const NutrientsTabPage({super.key});

  @override
  State<NutrientsTabPage> createState() => _NutrientsTabPageState();
}

class _NutrientsTabPageState extends State<NutrientsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images_diet/diet.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 20),
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
                        image: const AssetImage('images_diet/macro.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Macronutrients',
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
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const Micronutrients(),
                          ),
                        );
                      },
                      child: Ink.image(
                        image: const AssetImage('images_diet/micro.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Micronutrients',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
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
