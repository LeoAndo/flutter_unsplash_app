// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Results',
      json,
      ($checkedConvert) {
        final val = _$_Results(
          id: $checkedConvert('id', (v) => v as String),
          urls: $checkedConvert(
              'urls', (v) => Urls.fromJson(v as Map<String, dynamic>)),
          likes: $checkedConvert('likes', (v) => v as int),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'urls': instance.urls,
      'likes': instance.likes,
      'user': instance.user,
    };
