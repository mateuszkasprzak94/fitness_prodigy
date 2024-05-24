import 'package:fitness_prodigy/app/injection_container.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/favorite_quote_page.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/motivation_quotes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MainQuotePage extends StatefulWidget {
  const MainQuotePage({super.key});

  @override
  State<MainQuotePage> createState() => _MainQuotePageState();
}

class _MainQuotePageState extends State<MainQuotePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: BlocProvider<MotivationQuotesCubit>(
          create: (context) => getIt()..start(),
          child: BlocBuilder<MotivationQuotesCubit, MotivationQuotesState>(
            builder: (context, state) {
              double screenWidth = MediaQuery.of(context).size.width;

              return Scaffold(
                extendBodyBehindAppBar: false,
                appBar: AppBar(
                  backgroundColor: Colors.grey.shade300,
                  title: Text(
                    'Motivation Quotes',
                    style: GoogleFonts.lobster(
                        fontSize: screenWidth * 0.11, color: Colors.black),
                  ),
                  centerTitle: true,
                  titleSpacing: 0,
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  automaticallyImplyLeading: true,
                  bottom: TabBar(
                    labelColor: Colors.blueGrey,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                    tabs: [
                      Tab(
                        text: 'Random Quote',
                        icon: Icon(
                          Icons.all_inclusive,
                          color: Colors.amber.shade600,
                          size: 35,
                        ),
                      ),
                      const Tab(
                        text: 'Favorite Quote',
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                body: const TabBarView(children: [
                  MotivationQuotesPage(),
                  FavoriteQuotePage(),
                ]),
              );
            },
          ),
        ),
      );
}
