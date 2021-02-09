import 'package:maisdata/modules/shared/domain/entities/field.dart';

class Form {
  final String id;
  final String name;
  final List<Field> fields;

  Form({this.id, this.name, this.fields});
}