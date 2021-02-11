import 'package:maisdata/modules/shared/domain/entities/form.dart';

abstract class CreateFormDatasource {
  Future<void> createForm(Form form);
}

class CreateFormDatasourceImpl implements CreateFormDatasource {
  @override
  Future<void> createForm(Form form) {

  }

}