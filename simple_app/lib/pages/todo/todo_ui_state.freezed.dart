// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoUiState _$TodoUiStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return Initial.fromJson(json);
    case 'default':
      return UpdateTodoList.fromJson(json);
    case 'error':
      return ErrorDetails.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TodoUiState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$TodoUiStateTearOff {
  const _$TodoUiStateTearOff();

  Initial initial() {
    return const Initial();
  }

  UpdateTodoList call(List<Todo> values) {
    return UpdateTodoList(
      values,
    );
  }

  ErrorDetails error(String message) {
    return ErrorDetails(
      message,
    );
  }

  TodoUiState fromJson(Map<String, Object?> json) {
    return TodoUiState.fromJson(json);
  }
}

/// @nodoc
const $TodoUiState = _$TodoUiStateTearOff();

/// @nodoc
mixin _$TodoUiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> values) $default, {
    required TResult Function() initial,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateTodoList value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(ErrorDetails value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUiStateCopyWith<$Res> {
  factory $TodoUiStateCopyWith(
          TodoUiState value, $Res Function(TodoUiState) then) =
      _$TodoUiStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoUiStateCopyWithImpl<$Res> implements $TodoUiStateCopyWith<$Res> {
  _$TodoUiStateCopyWithImpl(this._value, this._then);

  final TodoUiState _value;
  // ignore: unused_field
  final $Res Function(TodoUiState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$TodoUiStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
@JsonSerializable()
class _$Initial implements Initial {
  const _$Initial({String? $type}) : $type = $type ?? 'initial';

  factory _$Initial.fromJson(Map<String, dynamic> json) =>
      _$$InitialFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TodoUiState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> values) $default, {
    required TResult Function() initial,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateTodoList value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(ErrorDetails value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialToJson(this);
  }
}

abstract class Initial implements TodoUiState {
  const factory Initial() = _$Initial;

  factory Initial.fromJson(Map<String, dynamic> json) = _$Initial.fromJson;
}

/// @nodoc
abstract class $UpdateTodoListCopyWith<$Res> {
  factory $UpdateTodoListCopyWith(
          UpdateTodoList value, $Res Function(UpdateTodoList) then) =
      _$UpdateTodoListCopyWithImpl<$Res>;
  $Res call({List<Todo> values});
}

/// @nodoc
class _$UpdateTodoListCopyWithImpl<$Res> extends _$TodoUiStateCopyWithImpl<$Res>
    implements $UpdateTodoListCopyWith<$Res> {
  _$UpdateTodoListCopyWithImpl(
      UpdateTodoList _value, $Res Function(UpdateTodoList) _then)
      : super(_value, (v) => _then(v as UpdateTodoList));

  @override
  UpdateTodoList get _value => super._value as UpdateTodoList;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(UpdateTodoList(
      values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTodoList implements UpdateTodoList {
  const _$UpdateTodoList(this.values, {String? $type})
      : $type = $type ?? 'default';

  factory _$UpdateTodoList.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTodoListFromJson(json);

  @override
  final List<Todo> values;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TodoUiState(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTodoList &&
            const DeepCollectionEquality().equals(other.values, values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(values));

  @JsonKey(ignore: true)
  @override
  $UpdateTodoListCopyWith<UpdateTodoList> get copyWith =>
      _$UpdateTodoListCopyWithImpl<UpdateTodoList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> values) $default, {
    required TResult Function() initial,
    required TResult Function(String message) error,
  }) {
    return $default(values);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
  }) {
    return $default?.call(values);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(values);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateTodoList value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(ErrorDetails value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTodoListToJson(this);
  }
}

abstract class UpdateTodoList implements TodoUiState {
  const factory UpdateTodoList(List<Todo> values) = _$UpdateTodoList;

  factory UpdateTodoList.fromJson(Map<String, dynamic> json) =
      _$UpdateTodoList.fromJson;

  List<Todo> get values;
  @JsonKey(ignore: true)
  $UpdateTodoListCopyWith<UpdateTodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDetailsCopyWith<$Res> {
  factory $ErrorDetailsCopyWith(
          ErrorDetails value, $Res Function(ErrorDetails) then) =
      _$ErrorDetailsCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorDetailsCopyWithImpl<$Res> extends _$TodoUiStateCopyWithImpl<$Res>
    implements $ErrorDetailsCopyWith<$Res> {
  _$ErrorDetailsCopyWithImpl(
      ErrorDetails _value, $Res Function(ErrorDetails) _then)
      : super(_value, (v) => _then(v as ErrorDetails));

  @override
  ErrorDetails get _value => super._value as ErrorDetails;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ErrorDetails(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorDetails implements ErrorDetails {
  const _$ErrorDetails(this.message, {String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorDetails.fromJson(Map<String, dynamic> json) =>
      _$$ErrorDetailsFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TodoUiState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorDetails &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      _$ErrorDetailsCopyWithImpl<ErrorDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> values) $default, {
    required TResult Function() initial,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> values)? $default, {
    TResult Function()? initial,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateTodoList value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(ErrorDetails value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateTodoList value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(ErrorDetails value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorDetailsToJson(this);
  }
}

abstract class ErrorDetails implements TodoUiState {
  const factory ErrorDetails(String message) = _$ErrorDetails;

  factory ErrorDetails.fromJson(Map<String, dynamic> json) =
      _$ErrorDetails.fromJson;

  String get message;
  @JsonKey(ignore: true)
  $ErrorDetailsCopyWith<ErrorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
