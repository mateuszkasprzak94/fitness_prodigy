import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteQuotePage extends StatefulWidget {
  const FavoriteQuotePage({super.key});

  @override
  State<FavoriteQuotePage> createState() => _FavoriteQuotePageState();
}

class _FavoriteQuotePageState extends State<FavoriteQuotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MotivationQuotesCubit, MotivationQuotesState>(
        builder: (context, state) {
          final favoriteQuotes =
              context.read<MotivationQuotesCubit>().favoriteQuotes;
          if (favoriteQuotes.isEmpty) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Motivation page.png'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          } else {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Motivation page.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView.builder(
                itemCount: favoriteQuotes.length,
                itemBuilder: (context, index) {
                  final quote = favoriteQuotes[index];
                  return Dismissible(
                    key: ValueKey(quote.quote),
                    onDismissed: (direction) {
                      context
                          .read<MotivationQuotesCubit>()
                          .removeQuoteFromFavorites(quote);
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.25)),
                      child: ListTile(
                        title: Text(
                          quote.quote,
                          style: const TextStyle(
                              color: Colors.white, fontStyle: FontStyle.italic),
                        ),
                        subtitle: Text(
                          quote.author,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
