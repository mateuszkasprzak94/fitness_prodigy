import 'package:fitness_prodigy/app/data/remote_data_sources/motivation_quote_data_source.dart';
import 'package:fitness_prodigy/app/models/quote_model.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/repositories/motivation_quotes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Motivation Quotes',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
        foregroundColor: Colors.white,
      ),
      body: BlocProvider(
        create: (context) => MotivationQuotesCubit(
            MotivationQuotesRepository(MotivationQuotesRemoteDataSource())),
        child: BlocBuilder<MotivationQuotesCubit, MotivationQuotesState>(
          builder: (context, state) {
            final quoteModel = state.model;
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Motivation page.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: ListView(
                  children: [
                    const SizedBox(height: 15),
                    const RandomQuoteButton(),
                    const SizedBox(height: 15),
                    const FavoriteQuoteButton(),
                    const SizedBox(height: 190),
                    if (quoteModel != null)
                      _DisplayQuote(quoteModel: state.model),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DisplayQuote extends StatelessWidget {
  const _DisplayQuote({
    required this.quoteModel,
    Key? key,
  }) : super(key: key);

  final QuoteModel? quoteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.70),
      ),
      child: Column(
        children: [
          Text(
            quoteModel!.quote,
            style: const TextStyle(
                fontSize: 24, fontStyle: FontStyle.italic, color: Colors.amber),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(
            quoteModel!.author,
            style: const TextStyle(fontSize: 24, color: Colors.amber),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FavoriteQuoteButton extends StatelessWidget {
  const FavoriteQuoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const shape = StadiumBorder();

    return Container(
      decoration: const ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 49, 49, 49),
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        label: const Text(
          'FAVORITE QUOTE',
          style: TextStyle(fontSize: 16, color: Colors.black),
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
    const shape = StadiumBorder();
    return Container(
      decoration: const ShapeDecoration(
        shape: shape,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 49, 49, 49),
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          //deactivate color and shadow
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () {
          context.read<MotivationQuotesCubit>().getRandomQuote();
        },
        icon: const Icon(
          Icons.all_inclusive,
          color: Colors.amber,
        ),
        label: const Text(
          'RANDOM QUOTE',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
