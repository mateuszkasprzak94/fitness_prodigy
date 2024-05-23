import 'package:fitness_prodigy/app/data/remote_data_sources/supplements_data_source.dart';
import 'package:fitness_prodigy/app/domain/models/supplements_type_model.dart';

class SupplementsTypeRepository {
  SupplementsTypeRepository({required this.remoteDataSource});

  final SupplementsTypeMockedDataSource remoteDataSource;

  Future<List<SupplementsTypeModel>> getSupplementsType(
      String supplementType) async {
    final json = await remoteDataSource.getSupplementsData();

    if (json == null) {
      return [];
    }

    final allSupplements =
        json.map((item) => SupplementsTypeModel.fromJson(item)).toList();

    return allSupplements
        .where((type) => type.supplementType == supplementType)
        .toList();
  }
}
