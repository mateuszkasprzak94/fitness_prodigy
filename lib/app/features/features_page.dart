import 'package:fitness_prodigy/app/features/diet/diet.dart';
import 'package:fitness_prodigy/app/features/exercies_examples/exercies_examples_page.dart';
import 'package:fitness_prodigy/app/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/features/motivation_quotes/motivations_quotes_page.dart';
import 'package:fitness_prodigy/app/features/progress_tracking/progress_tracking_page.dart';
import 'package:fitness_prodigy/app/features/social_sharing/social_sharing_page.dart';
import 'package:fitness_prodigy/app/features/stopwatch/stopwatch_page.dart';
import 'package:fitness_prodigy/app/features/supplements/supplements_page.dart';
import 'package:fitness_prodigy/app/features/water_glass_counter/water_glass_counter_page.dart';
import 'package:fitness_prodigy/app/features/workout_plans/workout_plans_page.dart';
import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Features:'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('images/Copy of Fitness Prodigy.png'),
              radius: 150,
            ),
            ExerciseExamples(),
            WorkoutPlans(),
            Diet(),
            Supplements(),
            Goals(),
            MotivationQuotes(),
            WaterGlassCounter(),
            Stopwatch(),
            ProgressTracking(),
            SocialSharing(),
          ],
        ),
      ),
    );
  }
}

class ExerciseExamples extends StatelessWidget {
  const ExerciseExamples({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.accessibility),
      label: const Text(
        'EXERCISE EXAMPLES',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const ExerciseExamplesPage(),
          ),
        );
      },
    );
  }
}

class WorkoutPlans extends StatelessWidget {
  const WorkoutPlans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.fitness_center),
      label: const Text(
        'WORKOUT PLANS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const WorkoutPlansPage(),
          ),
        );
      },
    );
  }
}

class Diet extends StatelessWidget {
  const Diet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.fastfood),
      label: const Text(
        'DIET',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const DietPage(),
          ),
        );
      },
    );
  }
}

class Supplements extends StatelessWidget {
  const Supplements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.local_pharmacy),
      label: const Text(
        'SUPPLEMENTS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const SupplementsPage(),
          ),
        );
      },
    );
  }
}

class Goals extends StatelessWidget {
  const Goals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const ImageIcon(
        AssetImage(
          'images/goals.png',
        ),
      ),
      label: const Text(
        'GOALS',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const GoalsPage(),
          ),
        );
      },
    );
  }
}

class MotivationQuotes extends StatelessWidget {
  const MotivationQuotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const ImageIcon(
        AssetImage(
          'images/motivation.png',
        ),
      ),
      label: const Text(
        'MOTIVATION QUOTES',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const MotivationQuotesPage(),
          ),
        );
      },
    );
  }
}

class WaterGlassCounter extends StatelessWidget {
  const WaterGlassCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const ImageIcon(
        AssetImage(
          'images/water.png',
        ),
      ),
      label: const Text(
        'WATER GLASS COUNTER',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const WaterGlassCounterPage(),
          ),
        );
      },
    );
  }
}

class Stopwatch extends StatelessWidget {
  const Stopwatch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.watch_rounded),
      label: const Text(
        'STOPWATCH',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const StopwatchPage(),
          ),
        );
      },
    );
  }
}

class ProgressTracking extends StatelessWidget {
  const ProgressTracking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.hourglass_bottom),
      label: const Text(
        'PROGRESS TRACKING',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const ProgressTrackingPage(),
          ),
        );
      },
    );
  }
}

class SocialSharing extends StatelessWidget {
  const SocialSharing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.person),
      label: const Text(
        'SOCIAL SHARING',
      ),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const SocialSharingPage(),
          ),
        );
      },
    );
  }
}
