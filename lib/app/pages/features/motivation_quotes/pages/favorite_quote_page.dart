import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:fitness_prodigy/app/injection_container.dart';
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
      backgroundColor: Colors.grey.shade300,
      body: BlocProvider<MotivationQuotesCubit>(
        create: (context) => getIt()..start(),
        child: BlocBuilder<MotivationQuotesCubit, MotivationQuotesState>(
          builder: (context, state) {
            final favoriteQuotes = state.favoriteQuotes;
            if (favoriteQuotes.isEmpty) {
              return Container();
            } else {
              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      children: [
                        for (final favoriteQuote in favoriteQuotes) ...[
                          Dismissible(
                            key: ValueKey(favoriteQuote.id),
                            confirmDismiss: (direction) async {
                              // only from right to left
                              return direction == DismissDirection.endToStart;
                            },
                            onDismissed: (direction) {
                              context
                                  .read<MotivationQuotesCubit>()
                                  .removeQuoteFromFavorites(
                                      documentID: favoriteQuote.id);
                            },
                            background: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: Colors.red,
                                ),
                                alignment: Alignment.center,
                                child: const Icon(Icons.delete,
                                    color: Colors.black),
                              ),
                            ),
                            child: FavoriteQuoteWidget(
                                favoriteQuote: favoriteQuote),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class FavoriteQuoteWidget extends StatelessWidget {
  const FavoriteQuoteWidget({
    super.key,
    required this.favoriteQuote,
  });

  final QuoteModel favoriteQuote;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: kHomeGradient,
            begin: Alignment.topRight,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(
          textAlign: TextAlign.left,
          favoriteQuote.quote,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.amber.shade600,
            fontStyle: FontStyle.italic,
            shadows: const [
              Shadow(
                color: Colors.black,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            textAlign: TextAlign.left,
            favoriteQuote.author,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
