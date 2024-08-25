// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthScreenState {
  AuthenticationEntity get authenticationEntity =>
      throw _privateConstructorUsedError;
  DataResponse<dynamic>? get authenticationResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthScreenStateCopyWith<AuthScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthScreenStateCopyWith<$Res> {
  factory $AuthScreenStateCopyWith(
          AuthScreenState value, $Res Function(AuthScreenState) then) =
      _$AuthScreenStateCopyWithImpl<$Res, AuthScreenState>;
  @useResult
  $Res call(
      {AuthenticationEntity authenticationEntity,
      DataResponse<dynamic>? authenticationResult});

  $AuthenticationEntityCopyWith<$Res> get authenticationEntity;
  $DataResponseCopyWith<dynamic, $Res>? get authenticationResult;
}

/// @nodoc
class _$AuthScreenStateCopyWithImpl<$Res, $Val extends AuthScreenState>
    implements $AuthScreenStateCopyWith<$Res> {
  _$AuthScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationEntity = null,
    Object? authenticationResult = freezed,
  }) {
    return _then(_value.copyWith(
      authenticationEntity: null == authenticationEntity
          ? _value.authenticationEntity
          : authenticationEntity // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      authenticationResult: freezed == authenticationResult
          ? _value.authenticationResult
          : authenticationResult // ignore: cast_nullable_to_non_nullable
              as DataResponse<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationEntityCopyWith<$Res> get authenticationEntity {
    return $AuthenticationEntityCopyWith<$Res>(_value.authenticationEntity,
        (value) {
      return _then(_value.copyWith(authenticationEntity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<dynamic, $Res>? get authenticationResult {
    if (_value.authenticationResult == null) {
      return null;
    }

    return $DataResponseCopyWith<dynamic, $Res>(_value.authenticationResult!,
        (value) {
      return _then(_value.copyWith(authenticationResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthScreenStateImplCopyWith<$Res>
    implements $AuthScreenStateCopyWith<$Res> {
  factory _$$AuthScreenStateImplCopyWith(_$AuthScreenStateImpl value,
          $Res Function(_$AuthScreenStateImpl) then) =
      __$$AuthScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationEntity authenticationEntity,
      DataResponse<dynamic>? authenticationResult});

  @override
  $AuthenticationEntityCopyWith<$Res> get authenticationEntity;
  @override
  $DataResponseCopyWith<dynamic, $Res>? get authenticationResult;
}

/// @nodoc
class __$$AuthScreenStateImplCopyWithImpl<$Res>
    extends _$AuthScreenStateCopyWithImpl<$Res, _$AuthScreenStateImpl>
    implements _$$AuthScreenStateImplCopyWith<$Res> {
  __$$AuthScreenStateImplCopyWithImpl(
      _$AuthScreenStateImpl _value, $Res Function(_$AuthScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationEntity = null,
    Object? authenticationResult = freezed,
  }) {
    return _then(_$AuthScreenStateImpl(
      authenticationEntity: null == authenticationEntity
          ? _value.authenticationEntity
          : authenticationEntity // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      authenticationResult: freezed == authenticationResult
          ? _value.authenticationResult
          : authenticationResult // ignore: cast_nullable_to_non_nullable
              as DataResponse<dynamic>?,
    ));
  }
}

/// @nodoc

class _$AuthScreenStateImpl implements _AuthScreenState {
  _$AuthScreenStateImpl(
      {this.authenticationEntity = const AuthenticationEntity(),
      this.authenticationResult});

  @override
  @JsonKey()
  final AuthenticationEntity authenticationEntity;
  @override
  final DataResponse<dynamic>? authenticationResult;

  @override
  String toString() {
    return 'AuthScreenState(authenticationEntity: $authenticationEntity, authenticationResult: $authenticationResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthScreenStateImpl &&
            (identical(other.authenticationEntity, authenticationEntity) ||
                other.authenticationEntity == authenticationEntity) &&
            (identical(other.authenticationResult, authenticationResult) ||
                other.authenticationResult == authenticationResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticationEntity, authenticationResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthScreenStateImplCopyWith<_$AuthScreenStateImpl> get copyWith =>
      __$$AuthScreenStateImplCopyWithImpl<_$AuthScreenStateImpl>(
          this, _$identity);
}

abstract class _AuthScreenState implements AuthScreenState {
  factory _AuthScreenState(
          {final AuthenticationEntity authenticationEntity,
          final DataResponse<dynamic>? authenticationResult}) =
      _$AuthScreenStateImpl;

  @override
  AuthenticationEntity get authenticationEntity;
  @override
  DataResponse<dynamic>? get authenticationResult;
  @override
  @JsonKey(ignore: true)
  _$$AuthScreenStateImplCopyWith<_$AuthScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
