import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/diet_page.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/page/event_planner_page.dart';
import 'package:fitness_prodigy/app/pages/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/motivation_quotes_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_page.dart';
import 'package:fitness_prodigy/app/pages/features/water_glass_counter/water_glass_counter_page.dart';
import 'package:flutter/material.dart';

class GridViewDetails {
  GridViewDetails({
    required this.title,
    required this.iconImage,
    required this.gradientsColor,
    required this.iconColor,
    required this.onPressed,
  });

  final String title;
  final String iconImage;
  final List<Color> gradientsColor;
  final Color iconColor;
  final void Function(BuildContext context) onPressed;
}

final List<GridViewDetails> featuresGridViewDetails = [
  GridViewDetails(
    title: 'diet',
    iconImage: 'assets/images/diet.png',
    gradientsColor: kHomeGradient,
    iconColor: Colors.redAccent,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const DietPage(),
        ),
      );
    },
  ),
  GridViewDetails(
    title: 'supplements',
    iconImage: 'assets/images/supplements.png',
    gradientsColor: kHomeGradient,
    iconColor: const Color.fromARGB(255, 189, 63, 211),
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const SupplementsPage(),
        ),
      );
    },
  ),
  GridViewDetails(
    title: 'goals',
    iconImage: 'assets/images/goals.png',
    gradientsColor: kHomeGradient,
    iconColor: Colors.orangeAccent,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const GoalsPage(),
        ),
      );
    },
  ),
  GridViewDetails(
    title: 'motivation quotes',
    iconImage: 'assets/images/quotes.png',
    gradientsColor: kHomeGradient,
    iconColor: Colors.teal,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const MotivationQuotesPage(),
        ),
      );
    },
  ),
  GridViewDetails(
    title: 'water glass counter',
    iconImage: 'assets/images/water.png',
    gradientsColor: kHomeGradient,
    iconColor: Colors.lightBlueAccent,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const WaterGlassCounterPage(),
        ),
      );
    },
  ),
  GridViewDetails(
    title: 'event planner',
    iconImage: 'assets/images/planner.png',
    gradientsColor: kHomeGradient,
    iconColor: Colors.deepOrangeAccent,
    onPressed: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const EventPlannerPage(),
        ),
      );
    },
  ),
];
