import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Micronutrients extends StatefulWidget {
  const Micronutrients({super.key});

  @override
  State<Micronutrients> createState() => _MicronutrientsState();
}

class _MicronutrientsState extends State<Micronutrients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Micronutrients',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        // flexibleSpace: Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //       Color.fromARGB(162, 79, 216, 102),
        //       Colors.white,
        //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        //   ),
        // ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images_diet/micronutrients.jpg'),
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
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage('images_diet/vits.jpg'),
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
                      onTap: () {},
                      child: Ink.image(
                        image: const AssetImage('images_diet/minerals.jpg'),
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
