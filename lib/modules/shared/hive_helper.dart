import 'package:hive/hive.dart';
import 'package:maisdata/modules/create_form/data/models/field_model.dart';
import 'package:maisdata/modules/create_form/data/models/form_model.dart';
import 'package:maisdata/modules/shared/data/models/field_type_model.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(FieldModelAdapter());
    Hive.registerAdapter(FormModelAdapter());
    Hive.registerAdapter(FieldTypeModelAdapter());
  }
}