import 'package:freezed_annotation/freezed_annotation.dart';

import 'results.dart';

part 'unsplash_response.freezed.dart';
part 'unsplash_response.g.dart';

@freezed
abstract class UnsplashResponse with _$UnsplashResponse {
  factory UnsplashResponse({
    required int total,
    required int totalPages,
    required List<Results> results,
  }) = _UnsplashResponse;

  factory UnsplashResponse.fromJson(Map<String, dynamic> json) =>
      _$UnsplashResponseFromJson(json);
}
