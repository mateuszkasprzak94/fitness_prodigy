import 'package:fitness_prodigy/app/domain/models/vitamins_gridview_details_model.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/widgets/vitamins_gridview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class VitaminsTypePage extends StatelessWidget {
  const VitaminsTypePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Vitamins Type',
          style: GoogleFonts.lobster(
              fontSize: screenWidth * 0.11, color: Colors.black),
        ),
        titleSpacing: 0,
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
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
                itemCount: vitaminsGridViewDetails.length,
                itemBuilder: (context, index) {
                  return VitaminsTypeGridviewContent(
                    index,
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
