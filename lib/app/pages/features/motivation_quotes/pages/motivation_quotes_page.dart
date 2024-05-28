import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/cubit/motivation_quotes_cubit.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/widgets/display_quote_widget.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/widgets/favorite_quote_button_widget.dart';
import 'package:fitness_prodigy/app/pages/features/motivation_quotes/pages/widgets/random_quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
