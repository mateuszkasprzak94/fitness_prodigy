import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headlineTextStyleOne = GoogleFonts.montserrat(
  fontSize: 72,
  color: Colors.white,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  shadows: [
    const Shadow(
      color: Colors.black,
      offset: Offset(-2, 10),
      blurRadius: 1.0,
    )
  ],
);

TextStyle headlineTextStyleTwo = GoogleFonts.montserrat(
  fontSize: 70,
  color: Colors.amber.shade600,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  shadows: [
    const Shadow(
      color: Colors.black,
      offset: Offset(-2, 10),
      blurRadius: 1.0,
    )
  ],
);

TextStyle homeButtonTextStyle = GoogleFonts.raleway(
  fontSize: 17,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

TextStyle loginTextStyle = GoogleFonts.montserrat(
  color: Colors.white,
  fontSize: 40,
  fontWeight: FontWeight.bold,
  shadows: [
    Shadow(
      color: Colors.black.withOpacity(0.8),
      offset: const Offset(0, 5),
      blurRadius: 3,
    ),
  ],
);

TextStyle textfieldHintStyle = const TextStyle(
    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle textfieldStyle = GoogleFonts.roboto(
  color: Colors.black87,
  fontWeight: FontWeight.w600,
);

TextStyle loginRegisterTextStyle = GoogleFonts.raleway(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

TextStyle haveOrCreateTextStyle = const TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontStyle: FontStyle.italic,
);

TextStyle profileTextStyle = GoogleFonts.montserrat(
  fontSize: 35,
  color: Colors.amber.shade600,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  shadows: [
    const Shadow(
      color: Colors.black,
      offset: Offset(0, 3),
      blurRadius: 1.0,
    )
  ],
);

TextStyle exercisesTextStyle = GoogleFonts.montserrat(
  fontSize: 35,
  color: Colors.amber.shade600,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.bold,
  shadows: [
    const Shadow(
      color: Colors.black,
      offset: Offset(0, 3),
      blurRadius: 1.0,
    )
  ],
);
