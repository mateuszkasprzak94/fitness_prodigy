import 'package:fintess_prodigy/app/home/home_page.dart';
import 'package:flutter/material.dart';
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
