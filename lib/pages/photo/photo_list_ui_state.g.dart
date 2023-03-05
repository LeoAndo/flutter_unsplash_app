// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list_ui_state.dart';

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

_$Data _$$DataFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Data',
      json,
      ($checkedConvert) {
        final val = _$Data(
          $checkedConvert('value',
              (v) => UnsplashResponse.fromJson(v as Map<String, dynamic>)),
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$DataToJson(_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'runtimeType': instance.$type,
    };

_$Loading _$$LoadingFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$Loading',
      json,
      ($checkedConvert) {
        final val = _$Loading(
          $type: $checkedConvert('runtimeType', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'runtimeType'},
    );

Map<String, dynamic> _$$LoadingToJson(_$Loading instance) => <String, dynamic>{
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
