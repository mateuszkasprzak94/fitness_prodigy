import 'package:fitness_prodigy/app/pages/features/diet/pages/nutrients_tab_page.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tips_tab_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DietPage extends StatelessWidget {
  const DietPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          title: Text(
            'Diet',
            style: GoogleFonts.lobster(
                fontSize: screenWidth * 0.09, color: Colors.white),
          ),
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          automaticallyImplyLeading: true,
          bottom: TabBar(
            indicator: const BoxDecoration(),
            labelColor: Colors.white,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.white60,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(166, 0, 0, 0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_dining,
                        size: 30,
                        color: Color.fromARGB(255, 41, 218, 94),
                      ),
                      SizedBox(width: 5),
                      Text('Nutrients'),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(166, 0, 0, 0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.lightbulb,
                        size: 30,
                        color: Colors.amber.shade800,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        'Tips',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NutrientsTabPage(),
            TipsTabPage(),
          ],
        ),
      ),
    );
  }
}
