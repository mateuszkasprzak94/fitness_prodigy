import 'package:fitness_prodigy/app/domain/models/quote_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
