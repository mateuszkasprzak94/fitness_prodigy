import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/eating_habits.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/meal_planning.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/meal_preparation.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/portion_control.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TipsTabPage extends StatelessWidget {
  const TipsTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images_diet/diet.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.darken,
            ),
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 4,
                child: SizedBox(
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
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
                                    builder: (_) =>
                                        const PortionControlContent(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images_diet/portion.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Portion Control',
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
                                    builder: (_) => const MealPlanningContent(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images_diet/planning1.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Meal Planning',
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
                                    builder: (_) => const EatingHabitsContent(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images_diet/habits1.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Eating Habits',
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
                                    builder: (_) =>
                                        const MealPreparationContent(),
                                  ),
                                );
                              },
                              child: Ink.image(
                                image: const AssetImage(
                                    'assets/images_diet/meal.jpg'),
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Meal Preparation',
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
