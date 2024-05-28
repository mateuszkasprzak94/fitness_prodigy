import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/vitamins_type_model.freezed.dart';
part 'generated/vitamins_type_model.g.dart';

@freezed
class VitaminsTypeModel with _$VitaminsTypeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory VitaminsTypeModel(
    String id,
    String vitaminType,
    String vitaminName,
    String overview,
    String benefits,
    String source,
    String usage,
    String caution,
    String conclusion,
  ) = _VitaminsTypeModel;

  factory VitaminsTypeModel.fromJson(Map<String, dynamic> json) =>
      _$VitaminsTypeModelFromJson(json);
}
