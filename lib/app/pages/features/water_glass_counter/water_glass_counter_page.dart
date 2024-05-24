import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/injection_container.dart';
import 'package:fitness_prodigy/app/pages/features/water_glass_counter/cubit/water_glass_counter_dart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class WaterGlassCounterPage extends StatefulWidget {
  const WaterGlassCounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WaterGlassCounterPage> createState() => _WaterGlassCounterPageState();
}

var goalReached = true;
var newGoal = 1;
var glassCount = 0;

class _WaterGlassCounterPageState extends State<WaterGlassCounterPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WaterGlassCounterCubit>(
      create: (context) => getIt()..start(),
      child: BlocConsumer<WaterGlassCounterCubit, WaterGlassCounterState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            final errorMessage = state.errorMessage ?? 'Unknown error';
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          double screenWidth = MediaQuery.of(context).size.width;
          double screenHeight = MediaQuery.of(context).size.height;
          final waterModels = state.model;
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              titleSpacing: 0,
              title: Text(
                'Water Glass Counter',
                style: GoogleFonts.lobster(
                    fontSize: screenWidth * 0.09, color: Colors.black),
              ),
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              automaticallyImplyLeading: true,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/w3.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (final waterModel in waterModels) ...[
                    SizedBox(
                      height: screenHeight / 3.0,
                      child: Column(
                        children: [
                          goalReached ==
                                  waterModel!.glassCount >= waterModel.newGoal
                              ? Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/water glass.png',
                                      width: 200,
                                      height: 200,
                                    )
                                        .animate()
                                        .fade(delay: 500.ms, duration: 1000.ms)
                                        .slide()
                                        .then()
                                        .shake(),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'GOAL REACHED!',
                                      style: TextStyle(
                                        letterSpacing: 3,
                                        color: Color.fromARGB(255, 25, 187, 30),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        shadows: [
                                          Shadow(
                                              color: Colors.black,
                                              offset: Offset(1, 1),
                                              blurRadius: 1),
                                        ],
                                      ),
                                    )
                                        .animate()
                                        .fade(delay: 500.ms, duration: 1000.ms)
                                        .slide()
                                        .then()
                                        .shake(),
                                  ],
                                )
                              : Image.asset(
                                  'assets/images/empty.png',
                                  width: 200,
                                  height: 200,
                                )
                                  .animate()
                                  .fade(delay: 500.ms, duration: 1000.ms)
                                  .slide()
                                  .then()
                                  .shake(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Water Glass: ${waterModel.glassCount} / Goal: ${waterModel.newGoal}',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const ShapeDecoration(
                          shape: StadiumBorder(),
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<WaterGlassCounterCubit>()
                                .incrementGlass();
                          },
                          style: ElevatedButton.styleFrom(
                            //deactivate color and shadow
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            fixedSize: const Size(50, 50),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          shape: StadiumBorder(),
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.white,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            context
                                .read<WaterGlassCounterCubit>()
                                .decrementGlass();
                          },
                          style: ElevatedButton.styleFrom(
                            //deactivate color and shadow
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            fixedSize: const Size(50, 50),
                          ),
                          child: const Text(
                            '-',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Slider(
                    onChanged: (newValue) {
                      setState(() {
                        newGoal = newValue.toInt();
                      });

                      context
                          .read<WaterGlassCounterCubit>()
                          .updateGoal(newGoal);
                    },
                    value: newGoal.toDouble(),
                    min: 1.0,
                    max: 20.0,
                    divisions: 19,
                    label: newGoal.toString(),
                    activeColor: Colors.blue,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
