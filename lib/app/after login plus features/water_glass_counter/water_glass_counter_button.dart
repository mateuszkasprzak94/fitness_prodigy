import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitness_prodigy/app/after%20login%20plus%20features/water_glass_counter/water_glass_counter_page.dart';
import 'package:flutter/material.dart';

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
            builder: (_) =>
                WaterGlassCounterPage(user: FirebaseAuth.instance.currentUser!),
          ),
        );
      },
    );
  }
}
