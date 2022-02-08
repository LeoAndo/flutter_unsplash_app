// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileImage _$ProfileImageFromJson(Map<String, dynamic> json) {
  return _ProfileImage.fromJson(json);
}

/// @nodoc
class _$ProfileImageTearOff {
  const _$ProfileImageTearOff();

  _ProfileImage call({String? small}) {
    return _ProfileImage(
      small: small,
    );
  }

  ProfileImage fromJson(Map<String, Object?> json) {
    return ProfileImage.fromJson(json);
  }
}

/// @nodoc
const $ProfileImage = _$ProfileImageTearOff();

/// @nodoc
mixin _$ProfileImage {
  String? get small => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageCopyWith<ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageCopyWith<$Res> {
  factory $ProfileImageCopyWith(
          ProfileImage value, $Res Function(ProfileImage) then) =
      _$ProfileImageCopyWithImpl<$Res>;
  $Res call({String? small});
}

/// @nodoc
class _$ProfileImageCopyWithImpl<$Res> implements $ProfileImageCopyWith<$Res> {
  _$ProfileImageCopyWithImpl(this._value, this._then);

  final ProfileImage _value;
  // ignore: unused_field
  final $Res Function(ProfileImage) _then;

  @override
  $Res call({
    Object? small = freezed,
  }) {
    return _then(_value.copyWith(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfileImageCopyWith<$Res>
    implements $ProfileImageCopyWith<$Res> {
  factory _$ProfileImageCopyWith(
          _ProfileImage value, $Res Function(_ProfileImage) then) =
      __$ProfileImageCopyWithImpl<$Res>;
  @override
  $Res call({String? small});
}

/// @nodoc
class __$ProfileImageCopyWithImpl<$Res> extends _$ProfileImageCopyWithImpl<$Res>
    implements _$ProfileImageCopyWith<$Res> {
  __$ProfileImageCopyWithImpl(
      _ProfileImage _value, $Res Function(_ProfileImage) _then)
      : super(_value, (v) => _then(v as _ProfileImage));

  @override
  _ProfileImage get _value => super._value as _ProfileImage;

  @override
  $Res call({
    Object? small = freezed,
  }) {
    return _then(_ProfileImage(
      small: small == freezed
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileImage implements _ProfileImage {
  _$_ProfileImage({this.small});

  factory _$_ProfileImage.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileImageFromJson(json);

  @override
  final String? small;

  @override
  String toString() {
    return 'ProfileImage(small: $small)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileImage &&
            const DeepCollectionEquality().equals(other.small, small));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(small));

  @JsonKey(ignore: true)
  @override
  _$ProfileImageCopyWith<_ProfileImage> get copyWith =>
      __$ProfileImageCopyWithImpl<_ProfileImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileImageToJson(this);
  }
}

abstract class _ProfileImage implements ProfileImage {
  factory _ProfileImage({String? small}) = _$_ProfileImage;

  factory _ProfileImage.fromJson(Map<String, dynamic> json) =
      _$_ProfileImage.fromJson;

  @override
  String? get small;
  @override
  @JsonKey(ignore: true)
  _$ProfileImageCopyWith<_ProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}
