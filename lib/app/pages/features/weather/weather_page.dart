import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/injection_container.dart';
import 'package:fitness_prodigy/app/models/weather_model.dart';
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

String description =
    "Are you planning to take your workout outdoors? Don't let unexpected weather catch you off guard! Check the current conditions in your location to make the most of your fitness routine. Whether it's a sunny day perfect for a run or a chance of rain that calls for an indoor workout, we've got you covered. Stay informed and stay active! 💪⛅️🌧️";

class WeatherContent extends StatefulWidget {
  const WeatherContent({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherContent> createState() => _WeatherContentState();
}

class _WeatherContentState extends State<WeatherContent> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
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
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: _appBar(),
              body: Center(
                child: Builder(builder: (context) {
                  if (state.status == Status.loading) {
                    return const CircularProgressIndicator();
                  }
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/weather4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: ListView(
                      children: [
                        const _DescriptionText(),
                        const SizedBox(height: 20),
                        const _SearchWidget(),
                        const SizedBox(height: 30),
                        if (weatherModel != null)
                          _DisplayWeatherWidget(
                            weatherModel: weatherModel,
                          )
                      ],
                    ),
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.15),
      title: Text(
        'Welcome to the Weather Center! 🌦️',
        style: GoogleFonts.satisfy(fontSize: 24, color: Colors.white),
        maxLines: 2,
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
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
        color: Colors.black.withOpacity(0.25),
      ),
      child: Text(
        description,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class _DisplayWeatherWidget extends StatelessWidget {
  const _DisplayWeatherWidget({
    required this.weatherModel,
    Key? key,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.25),
          ),
          child: Column(
            children: [
              Lottie.asset(getWeatherAnimation(
                  weatherModel.current.condition.weatherCondition)),
              Text(weatherModel.city.name,
                  style: const TextStyle(color: Colors.white, fontSize: 40)),
              Text('${weatherModel.current.tempC} °C',
                  style: const TextStyle(color: Colors.white, fontSize: 40)),
              Text(weatherModel.current.condition.weatherCondition,
                  style: const TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
        );
      },
    );
  }
}

class _SearchWidget extends StatefulWidget {
  const _SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<_SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<_SearchWidget> {
  final _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _cityController.addListener(() => setState(() {}));
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _cityController,
            decoration: InputDecoration(
              labelText: 'City',
              hintText: 'City',
              prefixIcon: const Icon(Icons.home),
              suffixIcon: _cityController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      onPressed: () => _cityController.clear(),
                      icon: const Icon(Icons.close)),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        const SizedBox(width: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.white.withOpacity(0.35),
            elevation: 0,
          ),
          onPressed: () {
            if (_cityController.text.isNotEmpty) {
              context
                  .read<WeatherCubit>()
                  .getWeatherModel(city: _cityController.text);

              _cityController.clear();
            }
          },
          child: const Text(
            'Get',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

// Weather animations
String getWeatherAnimation(String? condition) {
  if (condition == null) {
    return 'assets_weather/sunny.json'; // default to sunny
  }
  switch (condition.toLowerCase()) {
    case 'partly cloudy':
    case 'clouds':
    case 'mist':
    case 'smoke':
    case 'haze':
    case 'dust':
    case 'fog':
    case 'overcast':
      return 'assets_weather/cloud.json';
    case 'patchy rain possible':
    case 'rain':
    case 'light rain':
    case 'drizzle':
    case 'shower rain':
      return 'assets_weather/rain.json';
    case 'thunderstorm':
      return 'assets_weather/thunder.json';
    case 'snow':
      return 'assets_weather/snow.json';
    case 'clear':
      return 'assets_weather/sunny.json';
    default:
      return 'assets_weather/sunny.json';
  }
}
