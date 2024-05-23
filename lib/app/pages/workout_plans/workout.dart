import 'package:fitness_prodigy/app/domain/models/workout_plan_gridview_details_model.dart';
import 'package:fitness_prodigy/app/pages/workout_plans/widgets/workout_gridview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutPlansPage extends StatelessWidget {
  const WorkoutPlansPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Workout Plans',
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('assets/images/plan.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemCount: workoutGridViewDetails.length,
                itemBuilder: (context, index) {
                  final detail = workoutGridViewDetails[index];
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () => detail.onPressed(context),
                    child: WorkoutGridviewContent(
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
