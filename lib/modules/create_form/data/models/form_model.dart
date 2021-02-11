import 'package:hive/hive.dart';
import 'package:maisdata/modules/create_form/data/models/field_model.dart';
import 'package:maisdata/modules/shared/domain/entities/form.dart';

part 'form_model.g.dart';

@HiveType(typeId: 1)
class FormModel extends Form {
  static const boxName = 'form';
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  List<FieldModel> fields;

  FormModel(
    this.id,
    this.name,
    this.fields,
  ) : super(
          id: id,
          name: name,
          fields: fields,
        );

  Future save() async {
    final box = await Hive.openBox<FormModel>(boxName);
    await box.add(this);
  }

  Future<List<FormModel>> getAllForms() async {
    final box = await Hive.openBox<FormModel>(boxName);
    return box.values.toList();
  }
}
