import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/favorite_quote_page.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/motivation_quotes_page.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';
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
        child: BlocProvider(
          create: (context) => MotivationQuotesCubit(
              MotivationQuotesRepository(MotivationQuotesRemoteDataSource()))
            ..start(),
          child: BlocBuilder<MotivationQuotesCubit, MotivationQuotesState>(
            builder: (context, state) {
              return Scaffold(
                extendBodyBehindAppBar: true,
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Motivation Quotes',
                    style:
                        GoogleFonts.satisfy(fontSize: 30, color: Colors.white),
                  ),
                  centerTitle: true,
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                  automaticallyImplyLeading: true,
                  foregroundColor: Colors.white,
                  bottom: const TabBar(labelColor: Colors.white, tabs: [
                    Tab(
                        text: 'Random Quote',
                        icon: Icon(
                          Icons.all_inclusive,
                          color: Colors.amber,
                        )),
                    Tab(
                        text: 'Favorite Quote',
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                  ]),
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
