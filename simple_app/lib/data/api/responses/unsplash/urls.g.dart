// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'urls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Urls _$$_UrlsFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Urls',
      json,
      ($checkedConvert) {
        final val = _$_Urls(
          full: $checkedConvert('full', (v) => v as String),
          regular: $checkedConvert('regular', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_UrlsToJson(_$_Urls instance) => <String, dynamic>{
      'full': instance.full,
      'regular': instance.regular,
    };
