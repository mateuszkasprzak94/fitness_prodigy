import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FitStopwatchPage extends StatefulWidget {
  const FitStopwatchPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<FitStopwatchPage> createState() => _FitStopwatchPageState();
}

class _FitStopwatchPageState extends State<FitStopwatchPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stopwatch',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
    );
  }
}
