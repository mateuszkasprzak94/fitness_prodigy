import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/cubit/add_cubit.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/page/text_for_event_planner_add_page.dart';
import 'package:fitness_prodigy/app/domain/repositories/items_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class EventPlannerAddPage extends StatefulWidget {
  const EventPlannerAddPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EventPlannerAddPage> createState() => _AddPageState();
}

class _AddPageState extends State<EventPlannerAddPage> {
  String? _imageURL;
  String? _title;
  DateTime? _releaseDate;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => AddCubit(ItemsRepository()),
      child: BlocListener<AddCubit, AddState>(
        listener: (context, state) {
          if (state.saved) {
            Navigator.of(context).pop();
          }
          if (state.errorMessage!.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorMessage as String),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<AddCubit, AddState>(
          builder: (context, state) {
            final result =
                _imageURL == null || _title == null || _releaseDate == null;
            final colorchange = result;
            return Scaffold(
              backgroundColor: Colors.grey.shade300,
              appBar: AppBar(
                backgroundColor: Colors.grey.shade300,
                centerTitle: true,
                titleSpacing: 0,
                title: AutoSizeText(
                  'Add new upcoming event',
                  style: GoogleFonts.lobster(
                      fontSize: screenWidth * 0.07, color: Colors.black),
                  maxLines: 1,
                ),
                actions: [
                  IconButton(
                    onPressed: _imageURL == null ||
                            _title == null ||
                            _releaseDate == null
                        ? null
                        : () {
                            context.read<AddCubit>().add(
                                  _title!,
                                  _imageURL!,
                                  _releaseDate!,
                                );
                          },
                    icon: Icon(Icons.check,
                        size: 35,
                        color:
                            colorchange == true ? Colors.grey : Colors.green),
                  ),
                ],
              ),
              body: _AddPageBody(
                onTitleChanged: (newValue) {
                  setState(() {
                    _title = newValue;
                  });
                },
                onImageUrlChanged: (newValue) {
                  setState(() {
                    _imageURL = newValue;
                  });
                },
                onDateChanged: (newValue) {
                  setState(() {
                    _releaseDate = newValue;
                  });
                },
                selectedDateFormatted: _releaseDate == null
                    ? null
                    : DateFormat.yMMMMEEEEd().format(_releaseDate!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AddPageBody extends StatelessWidget {
  const _AddPageBody({
    Key? key,
    required this.onTitleChanged,
    required this.onImageUrlChanged,
    required this.onDateChanged,
    this.selectedDateFormatted,
  }) : super(key: key);

  final Function(String) onTitleChanged;
  final Function(String) onImageUrlChanged;
  final Function(DateTime?) onDateChanged;
  final String? selectedDateFormatted;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        children: [
          TextField(
            onChanged: onTitleChanged,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
              labelText: 'Title',
              labelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              hintText: 'Mr. Olympia',
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            style: GoogleFonts.roboto(
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            onChanged: onImageUrlChanged,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
              labelText: 'Image URL',
              labelStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              hintText: 'http:// ... .jpg',
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
            style: GoogleFonts.roboto(
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            splashColor: Colors.transparent,
            onTap: () async {
              final selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 365 * 10),
                ),
              );
              onDateChanged(selectedDate);
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10) +
                      const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: kHomeGradient,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    selectedDateFormatted ?? 'Choose event date',
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.40),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                addDescription,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 38, 78, 99),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
