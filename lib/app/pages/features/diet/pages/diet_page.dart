import 'package:fitness_prodigy/app/pages/features/diet/pages/nutrients_tab_page.dart';
import 'package:fitness_prodigy/app/pages/features/diet/pages/tips_tab_page.dart';
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
        length: 2,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Diet',
              style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
            ),
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            automaticallyImplyLeading: true,
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(255, 121, 120, 120),
              tabs: [
                Tab(
                    text: 'Nutrients',
                    icon: Icon(Icons.local_dining,
                        color: Color.fromARGB(255, 52, 153, 204))),
                Tab(
                    text: 'Tips',
                    icon: Icon(Icons.lightbulb, color: Colors.yellow)),
              ],
            ),
          ),
          body: const TabBarView(children: [
            NutrientsTabPage(),
            TipsTabPage(),
          ]),
        ),
      );
}
