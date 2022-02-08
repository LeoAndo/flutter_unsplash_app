// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unsplash_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnsplashResponse _$UnsplashResponseFromJson(Map<String, dynamic> json) {
  return _UnsplashResponse.fromJson(json);
}

/// @nodoc
class _$UnsplashResponseTearOff {
  const _$UnsplashResponseTearOff();

  _UnsplashResponse call(
      {required int total,
      required int totalPages,
      required List<Results> results}) {
    return _UnsplashResponse(
      total: total,
      totalPages: totalPages,
      results: results,
    );
  }

  UnsplashResponse fromJson(Map<String, Object?> json) {
    return UnsplashResponse.fromJson(json);
  }
}

/// @nodoc
const $UnsplashResponse = _$UnsplashResponseTearOff();

/// @nodoc
mixin _$UnsplashResponse {
  int get total => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsplashResponseCopyWith<UnsplashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsplashResponseCopyWith<$Res> {
  factory $UnsplashResponseCopyWith(
          UnsplashResponse value, $Res Function(UnsplashResponse) then) =
      _$UnsplashResponseCopyWithImpl<$Res>;
  $Res call({int total, int totalPages, List<Results> results});
}

/// @nodoc
class _$UnsplashResponseCopyWithImpl<$Res>
    implements $UnsplashResponseCopyWith<$Res> {
  _$UnsplashResponseCopyWithImpl(this._value, this._then);

  final UnsplashResponse _value;
  // ignore: unused_field
  final $Res Function(UnsplashResponse) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
abstract class _$UnsplashResponseCopyWith<$Res>
    implements $UnsplashResponseCopyWith<$Res> {
  factory _$UnsplashResponseCopyWith(
          _UnsplashResponse value, $Res Function(_UnsplashResponse) then) =
      __$UnsplashResponseCopyWithImpl<$Res>;
  @override
  $Res call({int total, int totalPages, List<Results> results});
}

/// @nodoc
class __$UnsplashResponseCopyWithImpl<$Res>
    extends _$UnsplashResponseCopyWithImpl<$Res>
    implements _$UnsplashResponseCopyWith<$Res> {
  __$UnsplashResponseCopyWithImpl(
      _UnsplashResponse _value, $Res Function(_UnsplashResponse) _then)
      : super(_value, (v) => _then(v as _UnsplashResponse));

  @override
  _UnsplashResponse get _value => super._value as _UnsplashResponse;

  @override
  $Res call({
    Object? total = freezed,
    Object? totalPages = freezed,
    Object? results = freezed,
  }) {
    return _then(_UnsplashResponse(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnsplashResponse implements _UnsplashResponse {
  _$_UnsplashResponse(
      {required this.total, required this.totalPages, required this.results});

  factory _$_UnsplashResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UnsplashResponseFromJson(json);

  @override
  final int total;
  @override
  final int totalPages;
  @override
  final List<Results> results;

  @override
  String toString() {
    return 'UnsplashResponse(total: $total, totalPages: $totalPages, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnsplashResponse &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$UnsplashResponseCopyWith<_UnsplashResponse> get copyWith =>
      __$UnsplashResponseCopyWithImpl<_UnsplashResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnsplashResponseToJson(this);
  }
}

abstract class _UnsplashResponse implements UnsplashResponse {
  factory _UnsplashResponse(
      {required int total,
      required int totalPages,
      required List<Results> results}) = _$_UnsplashResponse;

  factory _UnsplashResponse.fromJson(Map<String, dynamic> json) =
      _$_UnsplashResponse.fromJson;

  @override
  int get total;
  @override
  int get totalPages;
  @override
  List<Results> get results;
  @override
  @JsonKey(ignore: true)
  _$UnsplashResponseCopyWith<_UnsplashResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
