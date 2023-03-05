// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Initial _$$InitialFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Initial',
      json,
      ($checkedConvert) {
        final val = _$Initial(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$InitialToJson(_$Initial instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UpdateTodoList _$$UpdateTodoListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$UpdateTodoList',
      json,
      ($checkedConvert) {
        final val = _$UpdateTodoList(
          $checkedConvert(
              'values',
              (v) => (v as List<dynamic>)
                  .map((e) => Todo.fromJson(e as Map<String, dynamic>))
                  .toList()),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$UpdateTodoListToJson(_$UpdateTodoList instance) =>
    <String, dynamic>{
      'values': instance.values,
      'runtimeType': instance.$type,
    };

_$ErrorDetails _$$ErrorDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ErrorDetails',
      json,
      ($checkedConvert) {
        final val = _$ErrorDetails(
          $checkedConvert('message', (v) => v as String),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$ErrorDetailsToJson(_$ErrorDetails instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
