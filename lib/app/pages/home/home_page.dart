import 'package:fitness_prodigy/app/app.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              Column(
                children: [
                  Text(
                    'Fitness',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.2,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        const Shadow(
                          color: Colors.black,
                          offset: Offset(-2, 10),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Prodigy',
                    style: GoogleFonts.montserrat(
                      fontSize: screenWidth * 0.2,
                      color: Colors.amber.shade600,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        const Shadow(
                          color: Colors.black,
                          offset: Offset(-2, 10),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                  ),
                ],
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
                  style: GoogleFonts.raleway(
                    fontSize: screenWidth * 0.04,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
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
