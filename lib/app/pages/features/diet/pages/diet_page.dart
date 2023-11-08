import 'package:fitness_prodigy/app/pages/features/diet/pages/nutrients_tab_page.dart';
// import 'package:fitness_prodigy/app/pages/features/diet/pages/recipes_tap_page.dart';
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
            // flexibleSpace: Container(
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(colors: [
            //       Color.fromARGB(164, 0, 0, 0),
            //       Colors.white,
            //     ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            //   ),
            // ),
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
                // Tab(
                //     text: 'Recipes',
                //     icon: Icon(
                //       Icons.fastfood_outlined,
                //       color: Colors.orange.shade400,
                //     )),
              ],
            ),
          ),
          body: const TabBarView(children: [
            NutrientsTabPage(),
            TipsTabPage(),
            // RecipesTabPage(),
          ]),
        ),
      );
}
