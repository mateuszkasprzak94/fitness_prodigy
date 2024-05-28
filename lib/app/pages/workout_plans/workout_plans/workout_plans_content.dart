import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/domain/models/workout_plan_gridview_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPlansContent extends StatelessWidget {
  const WorkoutPlansContent({super.key, required this.workIndex});

  final int workIndex;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final details = workoutGridViewDetails[workIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          details.title,
          style: GoogleFonts.lobster(
            fontSize: screenWidth * 0.08,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(164, 0, 0, 0),
                Colors.grey.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: kHomeGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              details.start,
              style: GoogleFonts.lora(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              details.firstTitle,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.amber.shade600,
                shadows: [
                  const Shadow(
                    blurRadius: 2.0,
                    color: Colors.black,
                    offset: Offset(-1, 1),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            _TextWidget(details.partOne, details.partOneText),
            _TextWidget(details.partTwo, details.partTwoText),
            _TextWidget(details.partThree, details.partThreeText),
            if (details.secondTitle.isNotEmpty)
              Text(
                details.secondTitle,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.amber.shade600,
                  shadows: [
                    const Shadow(
                      blurRadius: 2.0,
                      color: Colors.black,
                      offset: Offset(-1, 1),
                    ),
                  ],
                ),
              ),
            if (details.secondTitle.isNotEmpty) const SizedBox(height: 15),
            _TextWidget(details.partFour, details.partFourText),
            _TextWidget(details.partFive, details.partFiveText),
            _TextWidget(details.partSix, details.partSixText),
            _TextWidget(details.partSeven, details.partSevenText),
            _TextWidget(details.partEight, details.partEightText),
            _TextWidget(details.cooldown, details.cooldownText),
            Text(
              details.end,
              style: GoogleFonts.lora(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget(
    this.title,
    this.description,
  );

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title.isNotEmpty)
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 8, 158, 233),
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 17,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
        if (description.isNotEmpty)
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
              fontSize: 12,
              shadows: [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        if (description.isNotEmpty) const SizedBox(height: 15),
      ],
    );
  }
}
