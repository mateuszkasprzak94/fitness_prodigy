import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1.5,
                color: Colors.amber.shade600,
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    offset: Offset(0, 2),
                  )
                ],
              ),
            ),
          ),
        if (description.isNotEmpty)
          Text(
            description,
            style: GoogleFonts.montserrat(
              fontSize: 13,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              shadows: [
                const Shadow(
                  color: Colors.black,
                  offset: Offset(0, 1),
                )
              ],
            ),
          ),
        if (image.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 102,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent,
                foregroundImage: AssetImage(image),
              ),
            ),
          )
      ],
    );
  }
}
