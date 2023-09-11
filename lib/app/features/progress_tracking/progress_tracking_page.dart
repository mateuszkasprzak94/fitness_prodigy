import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressTrackingPage extends StatefulWidget {
  const ProgressTrackingPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<ProgressTrackingPage> createState() => _ProgressTrackingPageState();
}

class _ProgressTrackingPageState extends State<ProgressTrackingPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Progress Tracking',
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
