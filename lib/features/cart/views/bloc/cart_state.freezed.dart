// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartScreenState {
  List<CartItemEntity> get cartItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartScreenStateCopyWith<CartScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartScreenStateCopyWith<$Res> {
  factory $CartScreenStateCopyWith(
          CartScreenState value, $Res Function(CartScreenState) then) =
      _$CartScreenStateCopyWithImpl<$Res, CartScreenState>;
  @useResult
  $Res call({List<CartItemEntity> cartItems});
}

/// @nodoc
class _$CartScreenStateCopyWithImpl<$Res, $Val extends CartScreenState>
    implements $CartScreenStateCopyWith<$Res> {
  _$CartScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartScreenStateImplCopyWith<$Res>
    implements $CartScreenStateCopyWith<$Res> {
  factory _$$CartScreenStateImplCopyWith(_$CartScreenStateImpl value,
          $Res Function(_$CartScreenStateImpl) then) =
      __$$CartScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItemEntity> cartItems});
}

/// @nodoc
class __$$CartScreenStateImplCopyWithImpl<$Res>
    extends _$CartScreenStateCopyWithImpl<$Res, _$CartScreenStateImpl>
    implements _$$CartScreenStateImplCopyWith<$Res> {
  __$$CartScreenStateImplCopyWithImpl(
      _$CartScreenStateImpl _value, $Res Function(_$CartScreenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartScreenStateImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItemEntity>,
    ));
  }
}

/// @nodoc

class _$CartScreenStateImpl implements _CartScreenState {
  _$CartScreenStateImpl({final List<CartItemEntity> cartItems = const []})
      : _cartItems = cartItems;

  final List<CartItemEntity> _cartItems;
  @override
  @JsonKey()
  List<CartItemEntity> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartScreenState(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartScreenStateImplCopyWith<_$CartScreenStateImpl> get copyWith =>
      __$$CartScreenStateImplCopyWithImpl<_$CartScreenStateImpl>(
          this, _$identity);
}

abstract class _CartScreenState implements CartScreenState {
  factory _CartScreenState({final List<CartItemEntity> cartItems}) =
      _$CartScreenStateImpl;

  @override
  List<CartItemEntity> get cartItems;
  @override
  @JsonKey(ignore: true)
  _$$CartScreenStateImplCopyWith<_$CartScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
