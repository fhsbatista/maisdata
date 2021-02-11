import 'package:hive/hive.dart';
import 'package:maisdata/modules/shared/data/models/field_type_model.dart';
import 'package:maisdata/modules/shared/domain/entities/field.dart';

part 'field_model.g.dart';

@HiveType(typeId: 0)
class FieldModel extends Field {
  @HiveField(0)
  String hint;

  @HiveField(1)
  FieldTypeModel fieldModelType;

  @HiveField(2)
  bool isOptional;

  @HiveField(3)
  int maxLength;

  FieldModel({
    this.hint,
    this.fieldModelType,
    this.isOptional,
    this.maxLength,
  }) : super(
          hint: hint,
          fieldType: fieldModelType.toFieldType(),
          isOptional: isOptional,
          maxLength: maxLength,
        );

  factory FieldModel.fromEntity(Field field) {
    return FieldModel(
      hint: field.hint,
      fieldModelType: field.fieldType.toFieldTypeModel(),
      isOptional: field.isOptional,
      maxLength: field.maxLength,
    );
  }
}
