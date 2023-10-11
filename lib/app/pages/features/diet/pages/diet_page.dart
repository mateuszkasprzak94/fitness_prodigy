import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DietPage extends StatefulWidget {
  const DietPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Diet',
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
            bottom: const TabBar(tabs: [
              Tab(text: 'Nutriens', icon: Icon(Icons.local_dining)),
              Tab(text: 'Tips', icon: Icon(Icons.lightbulb)),
              Tab(text: 'Recipes', icon: Icon(Icons.fastfood_outlined)),
            ]),
          ),
        ),
      );
}
