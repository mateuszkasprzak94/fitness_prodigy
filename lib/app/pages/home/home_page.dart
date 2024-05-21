import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_prodigy/app/app.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: kHomeGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AutoSizeText(
                      'Fitness'.toUpperCase(),
                      style: headlineTextStyleOne,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      'Prodigy'.toUpperCase(),
                      style: headlineTextStyleTwo,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(screenWidth * 0.60, 55),
                  backgroundColor: Colors.amber.shade600,
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context).achive,
                  style: homeButtonTextStyle,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const Auth(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
