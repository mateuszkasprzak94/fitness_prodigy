import 'package:fitness_prodigy/app/domain/models/features_gridview_details_model.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturesGridviewContent extends StatelessWidget {
  const FeaturesGridviewContent({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final details = featuresGridViewDetails[index];

    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: details.gradientsColor,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 4),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: FittedBox(
                child: Text(
                  details.title.toUpperCase(),
                  style: GoogleFonts.lato(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade600,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        const Shadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                        )
                      ]),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(details.iconImage),
                color: details.iconColor,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
