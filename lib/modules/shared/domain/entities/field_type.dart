import 'package:maisdata/modules/shared/domain/entities/capitalization.dart';

abstract class FieldType {
  String mask;
  Capitalization capitalization;
}

class QuantityField implements FieldType {
  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.none;
}

class NameField implements FieldType {
  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.words;
}

class DateField implements FieldType {
  @override
  String mask = '';

  @override
  Capitalization capitalization = Capitalization.none;
}