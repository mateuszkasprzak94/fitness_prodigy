import 'package:fintess_prodigy/main.dart';
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
            builder: (_) => const WaterGlassCounterPage(),
          ),
        );
      },
    );
  }
}
