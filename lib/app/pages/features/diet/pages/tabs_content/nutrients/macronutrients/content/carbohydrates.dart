import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CarbohydratesContent extends StatefulWidget {
  const CarbohydratesContent({super.key});

  @override
  State<CarbohydratesContent> createState() => _CarbohydratesContentState();
}

class _CarbohydratesContentState extends State<CarbohydratesContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Carbohydrates',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(160, 216, 179, 79),
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
              image: AssetImage('images_diet/carbspage.jpg'),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
