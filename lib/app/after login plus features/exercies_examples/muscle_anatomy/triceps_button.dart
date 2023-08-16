import 'package:flutter/material.dart';

class Triceps extends StatelessWidget {
  const Triceps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(45, 3, 168, 244),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'exercise examples page images/triceps.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 10),
          const Text(
            'Triceps',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
