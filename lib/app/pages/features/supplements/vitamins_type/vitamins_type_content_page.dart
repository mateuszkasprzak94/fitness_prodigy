import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:fitness_prodigy/app/data/remote_data_sources/vitamins_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/vitamins_gridview_details_model.dart';
import 'package:fitness_prodigy/app/domain/models/vitamins_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/vitamins_type_repository.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/vitamins_type/cubit/vitamins_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VitaminsTypeContentPage extends StatelessWidget {
  const VitaminsTypeContentPage({
    super.key,
    required this.vitaminIndex,
  });

  final int vitaminIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => VitaminsCubit(
            vitaminsTypeRepository: VitaminsTypeRepository(
                remoteDataSource: VitaminsTypeMockedDataSource()))
          ..fetchData(
            vitaminType: vitaminsGridViewDetails[vitaminIndex].vitaminType,
          ),
        child: BlocBuilder<VitaminsCubit, VitaminsState>(
          builder: (context, state) {
            final vitaminModel = state.vitaminsData;

            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              case Status.success:
                if (vitaminModel.isEmpty) {
                  return const Center(
                    child: Text('No data found'),
                  );
                }
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: kHomeGradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: SafeArea(
                    child: Center(
                      child: ListView(
                        children: [
                          for (final vitamin in vitaminModel)
                            VitaminItemWidget(
                              vitaminModel: vitamin,
                              index: vitaminIndex,
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              case Status.error:
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Unknown error',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

class VitaminItemWidget extends StatelessWidget {
  const VitaminItemWidget({
    super.key,
    required this.vitaminModel,
    required this.index,
  });

  final VitaminsTypeModel vitaminModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AutoSizeText(
          vitaminModel.vitaminName.toUpperCase(),
          style: profileTextStyle,
          maxLines: 2,
          maxFontSize: 30,
          minFontSize: 15,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 102,
              backgroundColor: Colors.black,
              child: Hero(
                tag: vitaminsGridViewDetails[index].iconTag,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  foregroundImage:
                      AssetImage(vitaminsGridViewDetails[index].iconImage),
                ),
              ),
            ),
          ),
        ),
        if (vitaminModel.overview.isNotEmpty)
          TextWidget(title: 'overview', text: vitaminModel.overview),
        if (vitaminModel.benefits.isNotEmpty)
          TextWidget(title: 'health benefits', text: vitaminModel.benefits),
        if (vitaminModel.source.isNotEmpty)
          TextWidget(title: 'sources', text: vitaminModel.source),
        if (vitaminModel.usage.isNotEmpty)
          TextWidget(title: 'usage and dosage', text: vitaminModel.usage),
        if (vitaminModel.caution.isNotEmpty)
          TextWidget(title: 'caution', text: vitaminModel.caution),
        if (vitaminModel.conclusion.isNotEmpty)
          TextWidget(title: 'conclusions', text: vitaminModel.conclusion),
        const SizedBox(height: 20),
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          AutoSizeText(
            title.toUpperCase(),
            style: profileTextStyle,
            maxLines: 1,
            maxFontSize: 20,
          ),
          AutoSizeText(
            text,
            style: supplementTextStyle,
            maxFontSize: 15,
          ),
        ],
      ),
    );
  }
}
