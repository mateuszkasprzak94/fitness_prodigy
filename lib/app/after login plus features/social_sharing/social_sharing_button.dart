import 'package:fitness_prodigy/app/after%20login%20plus%20features/social_sharing/social_sharing_page.dart';
import 'package:flutter/material.dart';

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
