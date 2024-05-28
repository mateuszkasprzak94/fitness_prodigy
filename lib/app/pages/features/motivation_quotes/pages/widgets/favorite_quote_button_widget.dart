import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteQuoteButton extends StatelessWidget {
  const FavoriteQuoteButton({
    required this.quoteModel,
    super.key,
  });

  final QuoteModel? quoteModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        final quoteModel = context.read<MotivationQuotesCubit>().state.model;
        if (quoteModel != null) {
          // Add the quote to favorites
          context.read<MotivationQuotesCubit>().addQuoteToFavorites(quoteModel);

          // Navigate to the Favorite Quotes Page
          DefaultTabController.of(context).animateTo(1);

          // Show a snackbar on the Favorite Quotes Page
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Quote added to Favorites'),
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: kHomeGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  'ADD QUOTE TO FAVORITES',
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
