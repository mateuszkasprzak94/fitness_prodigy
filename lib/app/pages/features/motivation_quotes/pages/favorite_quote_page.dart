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
          final favoriteQuotes = state.favoriteQuotes;
          // context.read<MotivationQuotesCubit>().favoriteQuotes;
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
              child: ListView(
                children: [
                  for (final favoriteQuote in favoriteQuotes) ...[
                    Dismissible(
                      key: ValueKey(favoriteQuote.quote),
                      direction: DismissDirection.endToStart,
                      onDismissed: (_) {
                        context
                            .read<MotivationQuotesCubit>()
                            .removeQuoteFromFavorites(
                                documentID: favoriteQuote.id);
                      },
                      background: Container(
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.45)),
                        child: ListTile(
                          title: Text(
                            favoriteQuote.quote,
                            style: const TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                          subtitle: Text(
                            favoriteQuote.author,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
