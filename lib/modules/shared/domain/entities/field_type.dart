import 'package:maisdata/modules/shared/domain/entities/capitalization.dart';

enum Type {
  quantity,
  name,
  date,
}

abstract class FieldType {
  Type type;
  String mask;
  Capitalization capitalization;
}

class QuantityField implements FieldType {
  @override
  Type type = Type.quantity;

  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.none;
}

class NameField implements FieldType {
  @override
  Type type = Type.name;

  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.words;
}

class DateField implements FieldType {
  @override
  Type type = Type.date;

  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.none;
}