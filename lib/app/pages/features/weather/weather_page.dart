import 'package:fitness_prodigy/app/pages/features/goals/goals_page.dart';
import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              extendBodyBehindAppBar: true,
              appBar: _appBar(),
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/weather4.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      _descriptionText(),
                      const SizedBox(height: 20),
                      const SearchWidget(),
                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _descriptionText() {
    return Container(
      color: Colors.black.withOpacity(0.25),
      child: Text(
        description,
        style: const TextStyle(
          color: Colors.white,
        ),
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

class _DisplayWeatherWidget extends StatelessWidget {
  const _DisplayWeatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(controller.text,
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 60),
            Text('27.0 C', style: Theme.of(context).textTheme.displayLarge),
          ],
        );
      },
    );
  }
}

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
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
            _DisplayWeatherWidget;
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
