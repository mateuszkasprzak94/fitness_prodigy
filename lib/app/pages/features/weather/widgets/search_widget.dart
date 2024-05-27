import 'package:fitness_prodigy/app/pages/features/weather/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
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
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              labelText: 'City',
              labelStyle: const TextStyle(color: Colors.white, fontSize: 20),
              hintText: 'City',
              hintStyle: const TextStyle(color: Colors.white, fontSize: 20),
              prefixIcon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              suffixIcon: _cityController.text.isEmpty
                  ? Container(width: 0)
                  : IconButton(
                      onPressed: () => _cityController.clear(),
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 30),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.white.withOpacity(0.8),
            elevation: 0,
          ),
          onPressed: () {
            if (_cityController.text.isNotEmpty) {
              context
                  .read<WeatherCubit>()
                  .getWeatherModel(city: _cityController.text);

              _cityController.clear();

              FocusScope.of(context).unfocus();
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
