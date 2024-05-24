import 'package:fitness_prodigy/app/data/remote_data_sources/vitamins_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/vitamins_type_model.dart';

class VitaminsTypeRepository {
  VitaminsTypeRepository({required this.remoteDataSource});

  final VitaminsTypeMockedDataSource remoteDataSource;

  Future<List<VitaminsTypeModel>> getVitaminsType(String vitaminType) async {
    final json = await remoteDataSource.getVitaminsData();

    if (json == null) {
      return [];
    }

    final allVitamins =
        json.map((item) => VitaminsTypeModel.fromJson(item)).toList();

    return allVitamins
        .where((type) => type.vitaminType == vitaminType)
        .toList();
  }
}
