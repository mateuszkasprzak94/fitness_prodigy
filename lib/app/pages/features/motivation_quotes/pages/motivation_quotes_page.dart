import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MotivationQuotesPage extends StatefulWidget {
  const MotivationQuotesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MotivationQuotesPage> createState() => _MotivationQuotesPageState();
}

class _MotivationQuotesPageState extends State<MotivationQuotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: BlocConsumer<MotivationQuotesCubit, MotivationQuotesState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unkown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final quoteModel = state.model;
          return Center(
            child: Column(
              children: [
                const RandomQuoteButton(),
                FavoriteQuoteButton(quoteModel: state.model),
                if (quoteModel != null) DisplayQuote(quoteModel: state.model),
              ],
            ),
          );
        },
      ),
    );
  }
}

class DisplayQuote extends StatelessWidget {
  const DisplayQuote({
    required this.quoteModel,
    Key? key,
  }) : super(key: key);

  final QuoteModel? quoteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.50),
        ),
        child: Column(
          children: [
            Text(
              quoteModel!.quote,
              style: const TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(1, 1),
                    blurRadius: 1,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              quoteModel!.author,
              style: GoogleFonts.lora(
                fontSize: 24,
                color: Colors.amber,
                fontWeight: FontWeight.w400,
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    offset: Offset(0, 1),
                    blurRadius: 1,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

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
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'ADD QUOTE TO FAVORITES',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RandomQuoteButton extends StatelessWidget {
  const RandomQuoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        context.read<MotivationQuotesCubit>().getRandomQuote();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10) +
            const EdgeInsets.only(top: 20),
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
                  Icons.all_inclusive,
                  color: Colors.amber,
                  size: 30,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'RANDOM QUOTE',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
