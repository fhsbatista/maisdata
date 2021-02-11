import 'package:flutter/foundation.dart';
import 'package:maisdata/modules/shared/domain/entities/field.dart';

class Form {
  final String id;
  final String name;
  final List<Field> fields;

  Form({
    this.id,
    @required this.name,
    @required this.fields,
  });

  @override
  String toString() {
    return '$name';
  }
}
