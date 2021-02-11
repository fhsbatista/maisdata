// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormModelAdapter extends TypeAdapter<FormModel> {
  @override
  final int typeId = 1;

  @override
  FormModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormModel(
      fields[0] as String,
      fields[1] as String,
      (fields[2] as List)?.cast<FieldModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, FormModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.fields);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
