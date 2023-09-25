import 'package:fitness_prodigy/app/pages/features/diet/diet_page.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/page/event_planner_page.dart';
import 'package:fitness_prodigy/app/pages/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/motivations_quotes_page.dart';
import 'package:fitness_prodigy/app/pages/features/progress_tracking/progress_tracking_page.dart';
import 'package:fitness_prodigy/app/pages/features/stopwatch/stopwatch_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_page.dart';
import 'package:fitness_prodigy/app/pages/features/water_glass_counter/water_glass_counter_page.dart';
import 'package:fitness_prodigy/app/models/button_model.dart';
import 'package:fitness_prodigy/app/pages/features/weather/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatefulWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const ImageIcon(
              AssetImage('images/weather_icon.png'),
            ),
            tooltip: 'Check weather for outdoor workout',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const WeatherContent(),
                  fullscreenDialog: true,
                ),
              );
            },
          ),
        ],
        title: Text(
          '# Fitness Prodigy',
          style: GoogleFonts.lobster(fontSize: 40, color: Colors.black),
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
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          children: [
            const Image(
              image: AssetImage('images/step4mm.png'),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 5),
            customFeaturesButton(
                title: 'DIET',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const DietPage(),
                    ),
                  );
                },
                icon: Icons.fastfood),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'SUPPLEMENTS',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const SupplementsPage(),
                    ),
                  );
                },
                icon: Icons.local_pharmacy),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'GOALS',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const GoalsPage(),
                    ),
                  );
                },
                assetImage: 'images/goals.png'),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'MOTIVATION QUOTES',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const MotivationQuotesPage(),
                    ),
                  );
                },
                assetImage: 'images/motivation.png'),
            // const SizedBox(height: 5),
            customFeaturesButtonWithImage(
                title: 'WATER GLASS COUNTER',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const WaterGlassCounterPage(),
                    ),
                  );
                },
                assetImage: 'images/water.png'),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'STOPWATCH',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const FitStopwatchPage(),
                    ),
                  );
                },
                icon: Icons.watch_rounded),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'PROGRESS TRACKING',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const ProgressTrackingPage(),
                    ),
                  );
                },
                icon: Icons.hourglass_bottom),
            // const SizedBox(height: 5),
            customFeaturesButton(
                title: 'EVENT PLANNER',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const EventPlannerPage(),
                    ),
                  );
                },
                icon: Icons.calendar_today),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
