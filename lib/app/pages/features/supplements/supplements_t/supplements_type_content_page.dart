import 'package:auto_size_text/auto_size_text.dart';
import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/enums.dart';
import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:fitness_prodigy/app/data/remote_data_sources/supplements_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/supplements_gridview_details_model.dart';
import 'package:fitness_prodigy/app/domain/models/supplements_type_model.dart';
import 'package:fitness_prodigy/app/domain/repositories/supplements_type_repository.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_t/cubit/supplements_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SupplementsTypeContentPage extends StatelessWidget {
  const SupplementsTypeContentPage({
    super.key,
    required this.supplementIndex,
  });

  final int supplementIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SupplementsCubit(
            supplementsTypeRepository: SupplementsTypeRepository(
                remoteDataSource: SupplementsTypeMockedDataSource()))
          ..fetchData(
            supplementType:
                supplementsGridViewDetails[supplementIndex].supplementType,
          ),
        child: BlocBuilder<SupplementsCubit, SupplementsState>(
          builder: (context, state) {
            final supplementModel = state.supplementsData;

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
                if (supplementModel.isEmpty) {
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
                          for (final supplement in supplementModel)
                            SupplementItemWidget(
                              supplementModel: supplement,
                              index: supplementIndex,
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

class SupplementItemWidget extends StatelessWidget {
  const SupplementItemWidget({
    super.key,
    required this.supplementModel,
    required this.index,
  });

  final SupplementsTypeModel supplementModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AutoSizeText(
          supplementModel.supplementName.toUpperCase(),
          style: profileTextStyle,
          maxLines: 1,
          maxFontSize: 25,
          minFontSize: 20,
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
                tag: supplementsGridViewDetails[index].iconTag,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  foregroundImage:
                      AssetImage(supplementsGridViewDetails[index].iconImage),
                ),
              ),
            ),
          ),
        ),
        if (supplementModel.overview.isNotEmpty)
          TextWidget(title: 'overview', text: supplementModel.overview),
        if (supplementModel.role.isNotEmpty)
          TextWidget(title: 'role in the body', text: supplementModel.role),
        if (supplementModel.source.isNotEmpty)
          TextWidget(title: 'sources', text: supplementModel.source),
        if (supplementModel.benefits.isNotEmpty)
          TextWidget(title: 'health benefits', text: supplementModel.benefits),
        if (supplementModel.usage.isNotEmpty)
          TextWidget(title: 'usage and dosage', text: supplementModel.usage),
        if (supplementModel.caution.isNotEmpty)
          TextWidget(title: 'caution', text: supplementModel.caution),
        if (supplementModel.conclusion.isNotEmpty)
          TextWidget(title: 'conclusions', text: supplementModel.conclusion),
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
