// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity)
        updateAuthenticationEntity,
    required TResult Function() authenticateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult? Function()? authenticateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult Function()? authenticateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateAuthEntityEvent value)
        updateAuthenticationEntity,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateAuthEntityEventImplCopyWith<$Res> {
  factory _$$UpdateAuthEntityEventImplCopyWith(
          _$UpdateAuthEntityEventImpl value,
          $Res Function(_$UpdateAuthEntityEventImpl) then) =
      __$$UpdateAuthEntityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationEntity entity});

  $AuthenticationEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$UpdateAuthEntityEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UpdateAuthEntityEventImpl>
    implements _$$UpdateAuthEntityEventImplCopyWith<$Res> {
  __$$UpdateAuthEntityEventImplCopyWithImpl(_$UpdateAuthEntityEventImpl _value,
      $Res Function(_$UpdateAuthEntityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdateAuthEntityEventImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AuthenticationEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationEntityCopyWith<$Res> get entity {
    return $AuthenticationEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$UpdateAuthEntityEventImpl
    with DiagnosticableTreeMixin
    implements UpdateAuthEntityEvent {
  const _$UpdateAuthEntityEventImpl(this.entity);

  @override
  final AuthenticationEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.updateAuthenticationEntity(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthenticationEvent.updateAuthenticationEntity'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAuthEntityEventImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAuthEntityEventImplCopyWith<_$UpdateAuthEntityEventImpl>
      get copyWith => __$$UpdateAuthEntityEventImplCopyWithImpl<
          _$UpdateAuthEntityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity)
        updateAuthenticationEntity,
    required TResult Function() authenticateUser,
  }) {
    return updateAuthenticationEntity(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult? Function()? authenticateUser,
  }) {
    return updateAuthenticationEntity?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult Function()? authenticateUser,
    required TResult orElse(),
  }) {
    if (updateAuthenticationEntity != null) {
      return updateAuthenticationEntity(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateAuthEntityEvent value)
        updateAuthenticationEntity,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
  }) {
    return updateAuthenticationEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
  }) {
    return updateAuthenticationEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    required TResult orElse(),
  }) {
    if (updateAuthenticationEntity != null) {
      return updateAuthenticationEntity(this);
    }
    return orElse();
  }
}

abstract class UpdateAuthEntityEvent implements AuthenticationEvent {
  const factory UpdateAuthEntityEvent(final AuthenticationEntity entity) =
      _$UpdateAuthEntityEventImpl;

  AuthenticationEntity get entity;
  @JsonKey(ignore: true)
  _$$UpdateAuthEntityEventImplCopyWith<_$UpdateAuthEntityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticateUserEventImplCopyWith<$Res> {
  factory _$$AuthenticateUserEventImplCopyWith(
          _$AuthenticateUserEventImpl value,
          $Res Function(_$AuthenticateUserEventImpl) then) =
      __$$AuthenticateUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateUserEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticateUserEventImpl>
    implements _$$AuthenticateUserEventImplCopyWith<$Res> {
  __$$AuthenticateUserEventImplCopyWithImpl(_$AuthenticateUserEventImpl _value,
      $Res Function(_$AuthenticateUserEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateUserEventImpl
    with DiagnosticableTreeMixin
    implements AuthenticateUserEvent {
  const _$AuthenticateUserEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.authenticateUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthenticationEvent.authenticateUser'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity)
        updateAuthenticationEntity,
    required TResult Function() authenticateUser,
  }) {
    return authenticateUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult? Function()? authenticateUser,
  }) {
    return authenticateUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateAuthenticationEntity,
    TResult Function()? authenticateUser,
    required TResult orElse(),
  }) {
    if (authenticateUser != null) {
      return authenticateUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateAuthEntityEvent value)
        updateAuthenticationEntity,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
  }) {
    return authenticateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
  }) {
    return authenticateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateAuthEntityEvent value)? updateAuthenticationEntity,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    required TResult orElse(),
  }) {
    if (authenticateUser != null) {
      return authenticateUser(this);
    }
    return orElse();
  }
}

abstract class AuthenticateUserEvent implements AuthenticationEvent {
  const factory AuthenticateUserEvent() = _$AuthenticateUserEventImpl;
}
