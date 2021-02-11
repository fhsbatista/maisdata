import 'package:flutter/material.dart' hide Form;
import 'package:hive/hive.dart';
import 'package:maisdata/modules/create_form/data/models/field_model.dart';
import 'package:maisdata/modules/create_form/data/models/form_model.dart';
import 'package:maisdata/modules/shared/dimens.dart';
import 'package:maisdata/modules/shared/domain/entities/field.dart';
import 'package:maisdata/modules/shared/domain/entities/field_type.dart';
import 'package:maisdata/modules/shared/domain/entities/form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginDefault),
        child: Column(
          children: [
            const SizedBox(height: kMarginDefault),
            SafeArea(
              child: Center(
                child: TextButton(
                  onPressed: () async {
                    final fields = [
                      Field(hint: 'teste 1', fieldType: QuantityField()),
                      Field(hint: 'teste 2', fieldType: DateField()),
                      Field(hint: 'teste 3', fieldType: QuantityField()),
                      Field(hint: 'teste 4', fieldType: NameField()),
                    ];
                    final form = Form(name: 'Form 2', fields: fields);
                    final model = FormModel(
                      '0',
                      form.name,
                      form.fields.map((e) => FieldModel.fromEntity(e)).toList(),
                    );
                    model.save();
                    final forms = await model.getAllForms();
                    forms.forEach((e) => print(e));
                  },
                  child: Text(
                    'Criar novo formulário',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
