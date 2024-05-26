import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micronutrients/content/minerals.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tabs_content/nutrients/micronutrients/content/vitamins.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Micronutrients extends StatelessWidget {
  const Micronutrients({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Micronutrients',
          style: GoogleFonts.lobster(
            fontSize: screenWidth * 0.09,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(161, 79, 150, 216),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images_diet/micronutrients.jpg'),
                fit: BoxFit.cover)),
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const VitaminsContent(),
                          ),
                        );
                      },
                      child: Ink.image(
                        image: const AssetImage('assets/images_diet/vits.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const MineralsContent(),
                          ),
                        );
                      },
                      child: Ink.image(
                        image:
                            const AssetImage('assets/images_diet/minerals.jpg'),
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    '',
                    style: GoogleFonts.asul(fontSize: 24, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
