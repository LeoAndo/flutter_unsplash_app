import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image.freezed.dart';
part 'profile_image.g.dart';

@freezed
abstract class ProfileImage with _$ProfileImage {
  factory ProfileImage({
    String? small,
  }) = _ProfileImage;

  factory ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$ProfileImageFromJson(json);
}
