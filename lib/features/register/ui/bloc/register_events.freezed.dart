// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity) updateRegisterForm,
    required TResult Function() registerNewUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult? Function()? registerNewUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult Function()? registerNewUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterForm value) updateRegisterForm,
    required TResult Function(RegisterNewUser value) registerNewUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult? Function(RegisterNewUser value)? registerNewUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult Function(RegisterNewUser value)? registerNewUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventsCopyWith<$Res> {
  factory $RegisterEventsCopyWith(
          RegisterEvents value, $Res Function(RegisterEvents) then) =
      _$RegisterEventsCopyWithImpl<$Res, RegisterEvents>;
}

/// @nodoc
class _$RegisterEventsCopyWithImpl<$Res, $Val extends RegisterEvents>
    implements $RegisterEventsCopyWith<$Res> {
  _$RegisterEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateRegisterFormImplCopyWith<$Res> {
  factory _$$UpdateRegisterFormImplCopyWith(_$UpdateRegisterFormImpl value,
          $Res Function(_$UpdateRegisterFormImpl) then) =
      __$$UpdateRegisterFormImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationEntity entity});

  $AuthenticationEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$UpdateRegisterFormImplCopyWithImpl<$Res>
    extends _$RegisterEventsCopyWithImpl<$Res, _$UpdateRegisterFormImpl>
    implements _$$UpdateRegisterFormImplCopyWith<$Res> {
  __$$UpdateRegisterFormImplCopyWithImpl(_$UpdateRegisterFormImpl _value,
      $Res Function(_$UpdateRegisterFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdateRegisterFormImpl(
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

class _$UpdateRegisterFormImpl implements UpdateRegisterForm {
  const _$UpdateRegisterFormImpl(this.entity);

  @override
  final AuthenticationEntity entity;

  @override
  String toString() {
    return 'RegisterEvents.updateRegisterForm(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRegisterFormImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRegisterFormImplCopyWith<_$UpdateRegisterFormImpl> get copyWith =>
      __$$UpdateRegisterFormImplCopyWithImpl<_$UpdateRegisterFormImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity) updateRegisterForm,
    required TResult Function() registerNewUser,
  }) {
    return updateRegisterForm(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult? Function()? registerNewUser,
  }) {
    return updateRegisterForm?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult Function()? registerNewUser,
    required TResult orElse(),
  }) {
    if (updateRegisterForm != null) {
      return updateRegisterForm(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterForm value) updateRegisterForm,
    required TResult Function(RegisterNewUser value) registerNewUser,
  }) {
    return updateRegisterForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult? Function(RegisterNewUser value)? registerNewUser,
  }) {
    return updateRegisterForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult Function(RegisterNewUser value)? registerNewUser,
    required TResult orElse(),
  }) {
    if (updateRegisterForm != null) {
      return updateRegisterForm(this);
    }
    return orElse();
  }
}

abstract class UpdateRegisterForm implements RegisterEvents {
  const factory UpdateRegisterForm(final AuthenticationEntity entity) =
      _$UpdateRegisterFormImpl;

  AuthenticationEntity get entity;
  @JsonKey(ignore: true)
  _$$UpdateRegisterFormImplCopyWith<_$UpdateRegisterFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterNewUserImplCopyWith<$Res> {
  factory _$$RegisterNewUserImplCopyWith(_$RegisterNewUserImpl value,
          $Res Function(_$RegisterNewUserImpl) then) =
      __$$RegisterNewUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterNewUserImplCopyWithImpl<$Res>
    extends _$RegisterEventsCopyWithImpl<$Res, _$RegisterNewUserImpl>
    implements _$$RegisterNewUserImplCopyWith<$Res> {
  __$$RegisterNewUserImplCopyWithImpl(
      _$RegisterNewUserImpl _value, $Res Function(_$RegisterNewUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterNewUserImpl implements RegisterNewUser {
  const _$RegisterNewUserImpl();

  @override
  String toString() {
    return 'RegisterEvents.registerNewUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterNewUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationEntity entity) updateRegisterForm,
    required TResult Function() registerNewUser,
  }) {
    return registerNewUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult? Function()? registerNewUser,
  }) {
    return registerNewUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationEntity entity)? updateRegisterForm,
    TResult Function()? registerNewUser,
    required TResult orElse(),
  }) {
    if (registerNewUser != null) {
      return registerNewUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateRegisterForm value) updateRegisterForm,
    required TResult Function(RegisterNewUser value) registerNewUser,
  }) {
    return registerNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult? Function(RegisterNewUser value)? registerNewUser,
  }) {
    return registerNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateRegisterForm value)? updateRegisterForm,
    TResult Function(RegisterNewUser value)? registerNewUser,
    required TResult orElse(),
  }) {
    if (registerNewUser != null) {
      return registerNewUser(this);
    }
    return orElse();
  }
}

abstract class RegisterNewUser implements RegisterEvents {
  const factory RegisterNewUser() = _$RegisterNewUserImpl;
}
