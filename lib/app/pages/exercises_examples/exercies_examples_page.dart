import 'package:fitness_prodigy/app/domain/models/exercise_gridview_details_model.dart';
import 'package:fitness_prodigy/app/pages/exercises_examples/widgets/exercise_gridview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseExamplesPage extends StatelessWidget {
  const ExerciseExamplesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Exercise Examples',
          style: GoogleFonts.lobster(
              fontSize: screenWidth * 0.11, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(164, 0, 0, 0),
              Colors.grey.shade300,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: Image(
                image: AssetImage(
                    'assets/exercise_examples_page_images/exercise_image.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemCount: exerciseGridViewDetails.length,
                itemBuilder: (context, index) {
                  final detail = exerciseGridViewDetails[index];
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () => detail.onPressed(context),
                    child: ExerciseGridviewContent(
                      index: index,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    // const Expanded(
    //         flex: 1,
    //         child: Image(
    //           image: AssetImage(
    //               'assets/exercise_examples_page_images/exercise_image.png'),
    //         ),
    //       ),