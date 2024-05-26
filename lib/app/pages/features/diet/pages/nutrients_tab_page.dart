import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/macronutrients/macronutrients.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micronutrients/micronutrients.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutrientsTabPage extends StatelessWidget {
  const NutrientsTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images_diet/diet.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  child: Column(
                    children: [
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
                                image: const AssetImage(
                                    'assets/images_diet/macro.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Macronutrients',
                            style: GoogleFonts.asul(
                                fontSize: 24, color: Colors.black),
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
                                image: const AssetImage(
                                    'assets/images_diet/micro.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Micronutrients',
                            style: GoogleFonts.asul(
                                fontSize: 24, color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
