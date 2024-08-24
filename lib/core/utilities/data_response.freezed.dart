// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function() loading,
    required TResult Function(int errorCode, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? completed,
    TResult? Function()? loading,
    TResult? Function(int errorCode, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function()? loading,
    TResult Function(int errorCode, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCompleted<T> value) completed,
    required TResult Function(DataIsLoading<T> value) loading,
    required TResult Function(DataError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCompleted<T> value)? completed,
    TResult? Function(DataIsLoading<T> value)? loading,
    TResult? Function(DataError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCompleted<T> value)? completed,
    TResult Function(DataIsLoading<T> value)? loading,
    TResult Function(DataError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<T, $Res> {
  factory $DataResponseCopyWith(
          DataResponse<T> value, $Res Function(DataResponse<T>) then) =
      _$DataResponseCopyWithImpl<T, $Res, DataResponse<T>>;
}

/// @nodoc
class _$DataResponseCopyWithImpl<T, $Res, $Val extends DataResponse<T>>
    implements $DataResponseCopyWith<T, $Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataCompletedImplCopyWith<T, $Res> {
  factory _$$DataCompletedImplCopyWith(_$DataCompletedImpl<T> value,
          $Res Function(_$DataCompletedImpl<T>) then) =
      __$$DataCompletedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$DataCompletedImplCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res, _$DataCompletedImpl<T>>
    implements _$$DataCompletedImplCopyWith<T, $Res> {
  __$$DataCompletedImplCopyWithImpl(_$DataCompletedImpl<T> _value,
      $Res Function(_$DataCompletedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DataCompletedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataCompletedImpl<T> implements DataCompleted<T> {
  _$DataCompletedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'DataResponse<$T>.completed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataCompletedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCompletedImplCopyWith<T, _$DataCompletedImpl<T>> get copyWith =>
      __$$DataCompletedImplCopyWithImpl<T, _$DataCompletedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function() loading,
    required TResult Function(int errorCode, String message) error,
  }) {
    return completed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? completed,
    TResult? Function()? loading,
    TResult? Function(int errorCode, String message)? error,
  }) {
    return completed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function()? loading,
    TResult Function(int errorCode, String message)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCompleted<T> value) completed,
    required TResult Function(DataIsLoading<T> value) loading,
    required TResult Function(DataError<T> value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCompleted<T> value)? completed,
    TResult? Function(DataIsLoading<T> value)? loading,
    TResult? Function(DataError<T> value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCompleted<T> value)? completed,
    TResult Function(DataIsLoading<T> value)? loading,
    TResult Function(DataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class DataCompleted<T> implements DataResponse<T> {
  factory DataCompleted(final T data) = _$DataCompletedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$DataCompletedImplCopyWith<T, _$DataCompletedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataIsLoadingImplCopyWith<T, $Res> {
  factory _$$DataIsLoadingImplCopyWith(_$DataIsLoadingImpl<T> value,
          $Res Function(_$DataIsLoadingImpl<T>) then) =
      __$$DataIsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DataIsLoadingImplCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res, _$DataIsLoadingImpl<T>>
    implements _$$DataIsLoadingImplCopyWith<T, $Res> {
  __$$DataIsLoadingImplCopyWithImpl(_$DataIsLoadingImpl<T> _value,
      $Res Function(_$DataIsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataIsLoadingImpl<T> implements DataIsLoading<T> {
  _$DataIsLoadingImpl();

  @override
  String toString() {
    return 'DataResponse<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataIsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function() loading,
    required TResult Function(int errorCode, String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? completed,
    TResult? Function()? loading,
    TResult? Function(int errorCode, String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function()? loading,
    TResult Function(int errorCode, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCompleted<T> value) completed,
    required TResult Function(DataIsLoading<T> value) loading,
    required TResult Function(DataError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCompleted<T> value)? completed,
    TResult? Function(DataIsLoading<T> value)? loading,
    TResult? Function(DataError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCompleted<T> value)? completed,
    TResult Function(DataIsLoading<T> value)? loading,
    TResult Function(DataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataIsLoading<T> implements DataResponse<T> {
  factory DataIsLoading() = _$DataIsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$DataErrorImplCopyWith<T, $Res> {
  factory _$$DataErrorImplCopyWith(
          _$DataErrorImpl<T> value, $Res Function(_$DataErrorImpl<T>) then) =
      __$$DataErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({int errorCode, String message});
}

/// @nodoc
class __$$DataErrorImplCopyWithImpl<T, $Res>
    extends _$DataResponseCopyWithImpl<T, $Res, _$DataErrorImpl<T>>
    implements _$$DataErrorImplCopyWith<T, $Res> {
  __$$DataErrorImplCopyWithImpl(
      _$DataErrorImpl<T> _value, $Res Function(_$DataErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? message = null,
  }) {
    return _then(_$DataErrorImpl<T>(
      null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataErrorImpl<T> implements DataError<T> {
  _$DataErrorImpl(this.errorCode, this.message);

  @override
  final int errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'DataResponse<$T>.error(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataErrorImpl<T> &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataErrorImplCopyWith<T, _$DataErrorImpl<T>> get copyWith =>
      __$$DataErrorImplCopyWithImpl<T, _$DataErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) completed,
    required TResult Function() loading,
    required TResult Function(int errorCode, String message) error,
  }) {
    return error(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? completed,
    TResult? Function()? loading,
    TResult? Function(int errorCode, String message)? error,
  }) {
    return error?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? completed,
    TResult Function()? loading,
    TResult Function(int errorCode, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataCompleted<T> value) completed,
    required TResult Function(DataIsLoading<T> value) loading,
    required TResult Function(DataError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataCompleted<T> value)? completed,
    TResult? Function(DataIsLoading<T> value)? loading,
    TResult? Function(DataError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataCompleted<T> value)? completed,
    TResult Function(DataIsLoading<T> value)? loading,
    TResult Function(DataError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataError<T> implements DataResponse<T> {
  factory DataError(final int errorCode, final String message) =
      _$DataErrorImpl<T>;

  int get errorCode;
  String get message;
  @JsonKey(ignore: true)
  _$$DataErrorImplCopyWith<T, _$DataErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
