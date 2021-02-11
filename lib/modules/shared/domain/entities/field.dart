import 'package:flutter/foundation.dart';
import 'package:maisdata/modules/shared/domain/entities/field_type.dart';

class Field {
  final String hint;
  final FieldType fieldType;
  final bool isOptional;
  final int maxLength;

  Field({
    @required this.hint,
    @required this.fieldType,
    this.isOptional = true,
    this.maxLength,
  });
}
