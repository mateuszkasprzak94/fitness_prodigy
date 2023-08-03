import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 251, 250),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Fitness Prodigy',
              style: GoogleFonts.italianno(
                fontSize: 80,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black87,
              ),
              child: const Text(
                'Achive your goals',
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const Features(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

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

class ExerciseExamplesPage extends StatelessWidget {
  const ExerciseExamplesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exercise Examples',
        ),
      ),
    );
  }
}

class WorkoutPlansPage extends StatelessWidget {
  const WorkoutPlansPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Workout Plans',
        ),
      ),
    );
  }
}

class DietPage extends StatelessWidget {
  const DietPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diet',
        ),
      ),
    );
  }
}

class SupplementsPage extends StatelessWidget {
  const SupplementsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Supplements',
        ),
      ),
    );
  }
}

class GoalsPage extends StatelessWidget {
  const GoalsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Goals',
        ),
      ),
    );
  }
}

class MotivationQuotesPage extends StatelessWidget {
  const MotivationQuotesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Motivation Quotes',
        ),
      ),
      body: ListView(
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.all_inclusive),
            label: const Text(
              'Random Quote',
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            label: const Text(
              'Favorite Quote',
            ),
          ),
        ],
      ),
    );
  }
}

class WaterGlassCounterPage extends StatelessWidget {
  const WaterGlassCounterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Water Glass Counter',
        ),
      ),
    );
  }
}

class StopwatchPage extends StatelessWidget {
  const StopwatchPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stopwatch',
        ),
      ),
    );
  }
}

class ProgressTrackingPage extends StatelessWidget {
  const ProgressTrackingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Progress Tracking',
        ),
      ),
    );
  }
}

class SocialSharingPage extends StatelessWidget {
  const SocialSharingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Social Sharing',
        ),
      ),
    );
  }
}
