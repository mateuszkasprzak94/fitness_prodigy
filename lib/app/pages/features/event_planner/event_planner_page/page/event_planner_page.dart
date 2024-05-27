import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_add_page/page/event_planner_add_page.dart';
import 'package:fitness_prodigy/app/pages/features/event_planner/event_planner_page/cubit/event_planner_page_cubit.dart';
import 'package:fitness_prodigy/app/domain/models/event_planner_item_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/items_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPlannerPage extends StatelessWidget {
  const EventPlannerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          'Event Planner',
          style: GoogleFonts.lobster(
              fontSize: screenWidth * 0.09, color: Colors.black),
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
        automaticallyImplyLeading: true,
      ),
      body: const _EventPlannerPageBody(),
      floatingActionButton: const FloatingButtonEvent(),
    );
  }
}

class FloatingButtonEvent extends StatelessWidget {
  const FloatingButtonEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        gradient: LinearGradient(
          colors: kHomeGradient,
        ),
      ),
      child: FloatingActionButton(
        // Deactivate color and shadow
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: const StadiumBorder(),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EventPlannerAddPage(),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.amber,
          shadows: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}

class _EventPlannerPageBody extends StatelessWidget {
  const _EventPlannerPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventPlannerPageCubit(ItemsRepository())..start(),
      child: BlocBuilder<EventPlannerPageCubit, EventPlannerPageState>(
        builder: (context, state) {
          final itemModels = state.items;
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            children: [
              for (final itemModel in itemModels)
                Dismissible(
                  key: ValueKey(itemModel.id),
                  background: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Color.fromARGB(255, 244, 67, 54),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(Icons.delete, color: Colors.black),
                    ),
                  ),
                  confirmDismiss: (direction) async {
                    // only from right to left
                    return direction == DismissDirection.endToStart;
                  },
                  onDismissed: (direction) {
                    context
                        .read<EventPlannerPageCubit>()
                        .remove(documentID: itemModel.id);
                  },
                  child: _ListViewItem(
                    itemModel: itemModel,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class _ListViewItem extends StatelessWidget {
  const _ListViewItem({
    Key? key,
    required this.itemModel,
  }) : super(key: key);

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: kButtonGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.black12,
                image: DecorationImage(
                  image: NetworkImage(
                    itemModel.imageURL,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          itemModel.title,
                          style: GoogleFonts.montserrat(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          itemModel.releaseDateFormatted(),
                          style: GoogleFonts.montserrat(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        itemModel.daysLeft(),
                        style: TextStyle(
                          color: int.parse(itemModel.daysLeft()) < 5
                              ? Colors.red
                              : Colors.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'days left',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blueGrey.shade800,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
