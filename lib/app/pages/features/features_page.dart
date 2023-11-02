import 'package:fitness_prodigy/app/pages/features/diet/pages/diet_page.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/page/event_planner_page.dart';
import 'package:fitness_prodigy/app/pages/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/main_quote_page.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_page.dart';
import 'package:fitness_prodigy/app/pages/features/water_glass_counter/water_glass_counter_page.dart';
import 'package:fitness_prodigy/app/models/button_model.dart';
import 'package:fitness_prodigy/app/pages/features/weather/weather_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      backgroundColor: Colors.grey.shade300,
      appBar: _appBar(),
      body: Center(
        child: _listView(),
      ),
    );
  }

  ListView _listView() {
    return ListView(
      children: [
        const Image(
          image: AssetImage('images/features.jpg'),
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
        customFeaturesButtonWithImage(
            title: 'MOTIVATION QUOTES',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const MainQuotePage(),
                ),
              );
            },
            assetImage: 'images/motivation.png'),
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
    );
  }

  AppBar _appBar() {
    return AppBar(
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const WeatherContent(),
                fullscreenDialog: true,
              ),
            );
          },
          child: Animate(
            child: Tooltip(
              message: AppLocalizations.of(context).checkweather,
              child: Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 30,
                child: Image.asset('images/weather_icon.png')
                    .animate()
                    .fade(delay: 500.ms, duration: 1000.ms)
                    .slide()
                    .then()
                    .shake(),
              ),
            ),
          ),
        ),
      ],
      title: Text(
        '# Fitness Prodigy',
        style: GoogleFonts.lobster(fontSize: 40, color: Colors.black),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(164, 0, 0, 0),
            Colors.grey.shade300,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      automaticallyImplyLeading: false,
    );
  }
}
