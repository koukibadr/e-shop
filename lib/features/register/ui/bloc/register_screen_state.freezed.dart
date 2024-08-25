// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterScreenState {
  AuthenticationEntity get authenticationEntity =>
      throw _privateConstructorUsedError;
  DataResponse<dynamic>? get registerationResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterScreenStateCopyWith<RegisterScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenStateCopyWith<$Res> {
  factory $RegisterScreenStateCopyWith(
          RegisterScreenState value, $Res Function(RegisterScreenState) then) =
      _$RegisterScreenStateCopyWithImpl<$Res, RegisterScreenState>;
  @useResult
  $Res call(
      {AuthenticationEntity authenticationEntity,
      DataResponse<dynamic>? registerationResult});

  $AuthenticationEntityCopyWith<$Res> get authenticationEntity;
  $DataResponseCopyWith<dynamic, $Res>? get registerationResult;
}

/// @nodoc
class _$RegisterScreenStateCopyWithImpl<$Res, $Val extends RegisterScreenState>
    implements $RegisterScreenStateCopyWith<$Res> {
  _$RegisterScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationEntity = null,
    Object? registerationResult = freezed,
  }) {
    return _then(_value.copyWith(
      authenticationEntity: null == authenticationEntity
          ? _value.authenticationEntity
          : authenticationEntity // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      registerationResult: freezed == registerationResult
          ? _value.registerationResult
          : registerationResult // ignore: cast_nullable_to_non_nullable
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
  $DataResponseCopyWith<dynamic, $Res>? get registerationResult {
    if (_value.registerationResult == null) {
      return null;
    }

    return $DataResponseCopyWith<dynamic, $Res>(_value.registerationResult!,
        (value) {
      return _then(_value.copyWith(registerationResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterScreenStateImplCopyWith<$Res>
    implements $RegisterScreenStateCopyWith<$Res> {
  factory _$$RegisterScreenStateImplCopyWith(_$RegisterScreenStateImpl value,
          $Res Function(_$RegisterScreenStateImpl) then) =
      __$$RegisterScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationEntity authenticationEntity,
      DataResponse<dynamic>? registerationResult});

  @override
  $AuthenticationEntityCopyWith<$Res> get authenticationEntity;
  @override
  $DataResponseCopyWith<dynamic, $Res>? get registerationResult;
}

/// @nodoc
class __$$RegisterScreenStateImplCopyWithImpl<$Res>
    extends _$RegisterScreenStateCopyWithImpl<$Res, _$RegisterScreenStateImpl>
    implements _$$RegisterScreenStateImplCopyWith<$Res> {
  __$$RegisterScreenStateImplCopyWithImpl(_$RegisterScreenStateImpl _value,
      $Res Function(_$RegisterScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticationEntity = null,
    Object? registerationResult = freezed,
  }) {
    return _then(_$RegisterScreenStateImpl(
      authenticationEntity: null == authenticationEntity
          ? _value.authenticationEntity
          : authenticationEntity // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
      registerationResult: freezed == registerationResult
          ? _value.registerationResult
          : registerationResult // ignore: cast_nullable_to_non_nullable
              as DataResponse<dynamic>?,
    ));
  }
}

/// @nodoc

class _$RegisterScreenStateImpl implements _RegisterScreenState {
  _$RegisterScreenStateImpl(
      {this.authenticationEntity = const AuthenticationEntity(),
      this.registerationResult});

  @override
  @JsonKey()
  final AuthenticationEntity authenticationEntity;
  @override
  final DataResponse<dynamic>? registerationResult;

  @override
  String toString() {
    return 'RegisterScreenState(authenticationEntity: $authenticationEntity, registerationResult: $registerationResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterScreenStateImpl &&
            (identical(other.authenticationEntity, authenticationEntity) ||
                other.authenticationEntity == authenticationEntity) &&
            (identical(other.registerationResult, registerationResult) ||
                other.registerationResult == registerationResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticationEntity, registerationResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterScreenStateImplCopyWith<_$RegisterScreenStateImpl> get copyWith =>
      __$$RegisterScreenStateImplCopyWithImpl<_$RegisterScreenStateImpl>(
          this, _$identity);
}

abstract class _RegisterScreenState implements RegisterScreenState {
  factory _RegisterScreenState(
          {final AuthenticationEntity authenticationEntity,
          final DataResponse<dynamic>? registerationResult}) =
      _$RegisterScreenStateImpl;

  @override
  AuthenticationEntity get authenticationEntity;
  @override
  DataResponse<dynamic>? get registerationResult;
  @override
  @JsonKey(ignore: true)
  _$$RegisterScreenStateImplCopyWith<_$RegisterScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
