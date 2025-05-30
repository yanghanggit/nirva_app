// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_object.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiaryFavoritesAdapter extends TypeAdapter<DiaryFavorites> {
  @override
  final int typeId = 1;

  @override
  DiaryFavorites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DiaryFavorites(
      favoriteIds: (fields[0] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, DiaryFavorites obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.favoriteIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiaryFavoritesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TokenAdapter extends TypeAdapter<Token> {
  @override
  final int typeId = 2;

  @override
  Token read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Token(
      access_token: fields[0] as String,
      token_type: fields[1] as String,
      refresh_token: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Token obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.access_token)
      ..writeByte(1)
      ..write(obj.token_type)
      ..writeByte(2)
      ..write(obj.refresh_token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
