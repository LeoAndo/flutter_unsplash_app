// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsplash_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnsplashResponse _$$_UnsplashResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_UnsplashResponse',
      json,
      ($checkedConvert) {
        final val = _$_UnsplashResponse(
          total: $checkedConvert('total', (v) => v as int),
          totalPages: $checkedConvert('total_pages', (v) => v as int),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => Results.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'totalPages': 'total_pages'},
    );

Map<String, dynamic> _$$_UnsplashResponseToJson(_$_UnsplashResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'total_pages': instance.totalPages,
      'results': instance.results,
    };
