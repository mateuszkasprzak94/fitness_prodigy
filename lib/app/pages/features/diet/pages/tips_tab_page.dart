import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/eating_habits.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/meal_planning.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/meal_preparation.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/tips/content/portion_control.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TipsTabPage extends StatefulWidget {
  const TipsTabPage({super.key});

  @override
  State<TipsTabPage> createState() => _TipsTabPageState();
}

class _TipsTabPageState extends State<TipsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images_diet/diet.jpg'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 220),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                  children: [
                    // const SizedBox(height: 50),
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
                                  builder: (_) => const PortionControlContent(),
                                ),
                              );
                            },
                            child: Ink.image(
                              image:
                                  const AssetImage('images_diet/portion.jpg'),
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
                              image:
                                  const AssetImage('images_diet/planning1.jpg'),
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
                              image:
                                  const AssetImage('images_diet/habits1.jpg'),
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
                              image: const AssetImage('images_diet/meal.jpg'),
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
            ],
          ),
        ),
      ),
    );
  }
}
