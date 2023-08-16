import 'package:flutter/material.dart';

class Chest extends StatelessWidget {
  const Chest({
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
            'exercise examples page images/chest.png',
            width: 100,
            height: 100,
          ),
          const SizedBox(width: 10),
          const Text(
            'Chest',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
