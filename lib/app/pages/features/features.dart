import 'package:fitness_prodigy/app/domain/models/features_gridview_details_model.dart';
import 'package:fitness_prodigy/app/pages/features/weather/weather_page.dart';
import 'package:fitness_prodigy/app/pages/features/widgets/features_gridview_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const WeatherContent(),
                  fullscreenDialog: true,
                ),
              );
            },
            child: Animate(
              child: Tooltip(
                message: AppLocalizations.of(context).checkweather,
                child: Container(
                  margin: const EdgeInsets.only(left: 5, right: 10),
                  alignment: Alignment.center,
                  width: 35,
                  child: Image.asset('assets/images/weather_icon.png')
                      .animate()
                      .fade(delay: 500.ms, duration: 1000.ms)
                      .slide()
                      .then()
                      .shake(),
                ),
              ),
            ),
          ),
        ],
        title: Text(
          '# Fitness Prodigy',
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
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Image(
              image: AssetImage('assets/images/feat.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemCount: featuresGridViewDetails.length,
              itemBuilder: (context, index) {
                final detail = featuresGridViewDetails[index];
                return InkWell(
                  splashColor: Colors.transparent,
                  onTap: () => detail.onPressed(context),
                  child: FeaturesGridviewContent(
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
