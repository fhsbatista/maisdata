import 'package:maisdata/modules/shared/domain/entities/field_type.dart';

class Field {
  final String hint;
  final FieldType type;
  final bool isOptional;
  final int maxLength;

  Field({
    this.hint,
    this.type,
    this.isOptional = true,
    this.maxLength,
  });
}
