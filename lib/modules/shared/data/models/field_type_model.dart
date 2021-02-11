import 'package:hive/hive.dart';
import 'package:maisdata/modules/shared/domain/entities/field_type.dart';

part 'field_type_model.g.dart';


@HiveType(typeId: 2)
enum FieldTypeModel {
  @HiveField(0)
  quantity,

  @HiveField(1)
  name,

  @HiveField(2)
  date,
}

extension FieldTypeModelExtensions on FieldTypeModel {
  FieldType toFieldType() {
    switch (this) {
      case FieldTypeModel.quantity:
        return QuantityField();
      case FieldTypeModel.name:
        return NameField();
      case FieldTypeModel.date:
        return DateField();
      default:
        throw(Exception('The FieldTypeModel: $this isnt valid'));
    }
  }
}

extension FieldTypeExtensions on FieldType {
  FieldTypeModel toFieldTypeModel() {
    if (this is QuantityField) return FieldTypeModel.quantity;
    else if (this is NameField) return FieldTypeModel.name;
    else if (this is DateField) return FieldTypeModel.date;
    else throw(Exception('Error when parsing FieldType to FieldTypeModel'));
  }
}
