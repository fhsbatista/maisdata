// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FieldTypeModelAdapter extends TypeAdapter<FieldTypeModel> {
  @override
  final int typeId = 2;

  @override
  FieldTypeModel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return FieldTypeModel.quantity;
      case 1:
        return FieldTypeModel.name;
      case 2:
        return FieldTypeModel.date;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, FieldTypeModel obj) {
    switch (obj) {
      case FieldTypeModel.quantity:
        writer.writeByte(0);
        break;
      case FieldTypeModel.name:
        writer.writeByte(1);
        break;
      case FieldTypeModel.date:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FieldTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
