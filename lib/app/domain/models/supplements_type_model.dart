import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/supplements_type_model.freezed.dart';
part 'generated/supplements_type_model.g.dart';

@freezed
class SupplementsTypeModel with _$SupplementsTypeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SupplementsTypeModel(
    String id,
    String supplementType,
    String supplementName,
    String overview,
    String role,
    String source,
    String benefits,
    String usage,
    String caution,
    String conclusion,
  ) = _SupplementsTypeModel;

  factory SupplementsTypeModel.fromJson(Map<String, dynamic> json) =>
      _$SupplementsTypeModelFromJson(json);
}
