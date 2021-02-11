// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FieldModelAdapter extends TypeAdapter<FieldModel> {
  @override
  final int typeId = 0;

  @override
  FieldModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FieldModel(
      hint: fields[0] as String,
      fieldModelType: fields[1] as FieldTypeModel,
      isOptional: fields[2] as bool,
      maxLength: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, FieldModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.hint)
      ..writeByte(1)
      ..write(obj.fieldModelType)
      ..writeByte(2)
      ..write(obj.isOptional)
      ..writeByte(3)
      ..write(obj.maxLength);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FieldModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
