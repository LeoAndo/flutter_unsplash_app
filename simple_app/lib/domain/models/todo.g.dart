// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Todo',
      json,
      ($checkedConvert) {
        final val = _$_Todo(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          done: $checkedConvert('done', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'done': instance.done,
    };
