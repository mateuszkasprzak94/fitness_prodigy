import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/injection_container.dart';
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart';
import 'package:fitness_prodigy/app/pages/features/weather/widgets/display_widget.dart';
import 'package:fitness_prodigy/app/pages/features/weather/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

String description =
    "Are you planning to take your workout outdoors? Don't let unexpected weather catch you off guard! Check the current conditions in your location to make the most of your fitness routine. Whether it's a sunny day perfect for a run or a chance of rain that calls for an indoor workout, we've got you covered. Stay informed and stay active! 💪⛅️🌧️";

class WeatherContent extends StatelessWidget {
  const WeatherContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.black.withOpacity(0.25),
          title: Text(
            'Welcome to the Weather Center! 🌦️',
            style: GoogleFonts.lobster(
                fontSize: screenWidth * 0.06, color: Colors.white),
            maxLines: 1,
          ),
          titleSpacing: 0,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/weather4.png'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.40),
                BlendMode.darken,
              ),
            ),
          ),
          child: BlocProvider<WeatherCubit>(
            create: (context) => getIt(),
            child: BlocConsumer<WeatherCubit, WeatherState>(
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
                final weatherModel = state.model;

                return Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                        flex: 6,
                        child: Column(
                          children: [
                            const _DescriptionText(),
                            const SizedBox(height: 20),
                            const SearchWidget(),
                            const SizedBox(height: 30),
                            if (state.status == Status.loading)
                              const Center(
                                child: CircularProgressIndicator(),
                              )
                            else if (weatherModel != null)
                              DisplayWeatherWidget(
                                weatherModel: weatherModel,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _DescriptionText extends StatelessWidget {
  const _DescriptionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.45),
      ),
      child: Text(
        description,
        style: GoogleFonts.lora(
          fontSize: 15,
          color: Colors.white,
          shadows: [
            const Shadow(
              color: Colors.black,
              offset: Offset(-1, 1),
              blurRadius: 1,
            ),
          ],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
