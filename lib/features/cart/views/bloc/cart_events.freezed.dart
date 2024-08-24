// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartBlocEvents {
  ProductEntity get product => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity, ProductEntity product)
        udpateProductQuantity,
    required TResult Function(ProductEntity product) removeProduct,
    required TResult Function(ProductEntity product) addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult? Function(ProductEntity product)? removeProduct,
    TResult? Function(ProductEntity product)? addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult Function(ProductEntity product)? removeProduct,
    TResult Function(ProductEntity product)? addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProductQuantityEvent value)
        udpateProductQuantity,
    required TResult Function(RemoveProductFromCartEvent value) removeProduct,
    required TResult Function(AddProductToCart value) addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult? Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult? Function(AddProductToCart value)? addProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult Function(AddProductToCart value)? addProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartBlocEventsCopyWith<CartBlocEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBlocEventsCopyWith<$Res> {
  factory $CartBlocEventsCopyWith(
          CartBlocEvents value, $Res Function(CartBlocEvents) then) =
      _$CartBlocEventsCopyWithImpl<$Res, CartBlocEvents>;
  @useResult
  $Res call({ProductEntity product});

  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class _$CartBlocEventsCopyWithImpl<$Res, $Val extends CartBlocEvents>
    implements $CartBlocEventsCopyWith<$Res> {
  _$CartBlocEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductEntityCopyWith<$Res> get product {
    return $ProductEntityCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateProductQuantityEventImplCopyWith<$Res>
    implements $CartBlocEventsCopyWith<$Res> {
  factory _$$UpdateProductQuantityEventImplCopyWith(
          _$UpdateProductQuantityEventImpl value,
          $Res Function(_$UpdateProductQuantityEventImpl) then) =
      __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, ProductEntity product});

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventsCopyWithImpl<$Res, _$UpdateProductQuantityEventImpl>
    implements _$$UpdateProductQuantityEventImplCopyWith<$Res> {
  __$$UpdateProductQuantityEventImplCopyWithImpl(
      _$UpdateProductQuantityEventImpl _value,
      $Res Function(_$UpdateProductQuantityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(_$UpdateProductQuantityEventImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$UpdateProductQuantityEventImpl
    with DiagnosticableTreeMixin
    implements UpdateProductQuantityEvent {
  const _$UpdateProductQuantityEventImpl(
      {required this.quantity, required this.product});

  @override
  final int quantity;
  @override
  final ProductEntity product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartBlocEvents.udpateProductQuantity(quantity: $quantity, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartBlocEvents.udpateProductQuantity'))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductQuantityEventImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => __$$UpdateProductQuantityEventImplCopyWithImpl<
          _$UpdateProductQuantityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity, ProductEntity product)
        udpateProductQuantity,
    required TResult Function(ProductEntity product) removeProduct,
    required TResult Function(ProductEntity product) addProduct,
  }) {
    return udpateProductQuantity(quantity, product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult? Function(ProductEntity product)? removeProduct,
    TResult? Function(ProductEntity product)? addProduct,
  }) {
    return udpateProductQuantity?.call(quantity, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult Function(ProductEntity product)? removeProduct,
    TResult Function(ProductEntity product)? addProduct,
    required TResult orElse(),
  }) {
    if (udpateProductQuantity != null) {
      return udpateProductQuantity(quantity, product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProductQuantityEvent value)
        udpateProductQuantity,
    required TResult Function(RemoveProductFromCartEvent value) removeProduct,
    required TResult Function(AddProductToCart value) addProduct,
  }) {
    return udpateProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult? Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult? Function(AddProductToCart value)? addProduct,
  }) {
    return udpateProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult Function(AddProductToCart value)? addProduct,
    required TResult orElse(),
  }) {
    if (udpateProductQuantity != null) {
      return udpateProductQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateProductQuantityEvent implements CartBlocEvents {
  const factory UpdateProductQuantityEvent(
      {required final int quantity,
      required final ProductEntity product}) = _$UpdateProductQuantityEventImpl;

  int get quantity;
  @override
  ProductEntity get product;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromCartEventImplCopyWith<$Res>
    implements $CartBlocEventsCopyWith<$Res> {
  factory _$$RemoveProductFromCartEventImplCopyWith(
          _$RemoveProductFromCartEventImpl value,
          $Res Function(_$RemoveProductFromCartEventImpl) then) =
      __$$RemoveProductFromCartEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductEntity product});

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$RemoveProductFromCartEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventsCopyWithImpl<$Res, _$RemoveProductFromCartEventImpl>
    implements _$$RemoveProductFromCartEventImplCopyWith<$Res> {
  __$$RemoveProductFromCartEventImplCopyWithImpl(
      _$RemoveProductFromCartEventImpl _value,
      $Res Function(_$RemoveProductFromCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveProductFromCartEventImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$RemoveProductFromCartEventImpl
    with DiagnosticableTreeMixin
    implements RemoveProductFromCartEvent {
  const _$RemoveProductFromCartEventImpl({required this.product});

  @override
  final ProductEntity product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartBlocEvents.removeProduct(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartBlocEvents.removeProduct'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromCartEventImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromCartEventImplCopyWith<_$RemoveProductFromCartEventImpl>
      get copyWith => __$$RemoveProductFromCartEventImplCopyWithImpl<
          _$RemoveProductFromCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity, ProductEntity product)
        udpateProductQuantity,
    required TResult Function(ProductEntity product) removeProduct,
    required TResult Function(ProductEntity product) addProduct,
  }) {
    return removeProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult? Function(ProductEntity product)? removeProduct,
    TResult? Function(ProductEntity product)? addProduct,
  }) {
    return removeProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult Function(ProductEntity product)? removeProduct,
    TResult Function(ProductEntity product)? addProduct,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProductQuantityEvent value)
        udpateProductQuantity,
    required TResult Function(RemoveProductFromCartEvent value) removeProduct,
    required TResult Function(AddProductToCart value) addProduct,
  }) {
    return removeProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult? Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult? Function(AddProductToCart value)? addProduct,
  }) {
    return removeProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult Function(AddProductToCart value)? addProduct,
    required TResult orElse(),
  }) {
    if (removeProduct != null) {
      return removeProduct(this);
    }
    return orElse();
  }
}

abstract class RemoveProductFromCartEvent implements CartBlocEvents {
  const factory RemoveProductFromCartEvent(
          {required final ProductEntity product}) =
      _$RemoveProductFromCartEventImpl;

  @override
  ProductEntity get product;
  @override
  @JsonKey(ignore: true)
  _$$RemoveProductFromCartEventImplCopyWith<_$RemoveProductFromCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartImplCopyWith<$Res>
    implements $CartBlocEventsCopyWith<$Res> {
  factory _$$AddProductToCartImplCopyWith(_$AddProductToCartImpl value,
          $Res Function(_$AddProductToCartImpl) then) =
      __$$AddProductToCartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductEntity product});

  @override
  $ProductEntityCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductToCartImplCopyWithImpl<$Res>
    extends _$CartBlocEventsCopyWithImpl<$Res, _$AddProductToCartImpl>
    implements _$$AddProductToCartImplCopyWith<$Res> {
  __$$AddProductToCartImplCopyWithImpl(_$AddProductToCartImpl _value,
      $Res Function(_$AddProductToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddProductToCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
    ));
  }
}

/// @nodoc

class _$AddProductToCartImpl
    with DiagnosticableTreeMixin
    implements AddProductToCart {
  const _$AddProductToCartImpl({required this.product});

  @override
  final ProductEntity product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartBlocEvents.addProduct(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartBlocEvents.addProduct'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartImplCopyWith<_$AddProductToCartImpl> get copyWith =>
      __$$AddProductToCartImplCopyWithImpl<_$AddProductToCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int quantity, ProductEntity product)
        udpateProductQuantity,
    required TResult Function(ProductEntity product) removeProduct,
    required TResult Function(ProductEntity product) addProduct,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult? Function(ProductEntity product)? removeProduct,
    TResult? Function(ProductEntity product)? addProduct,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int quantity, ProductEntity product)?
        udpateProductQuantity,
    TResult Function(ProductEntity product)? removeProduct,
    TResult Function(ProductEntity product)? addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateProductQuantityEvent value)
        udpateProductQuantity,
    required TResult Function(RemoveProductFromCartEvent value) removeProduct,
    required TResult Function(AddProductToCart value) addProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult? Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult? Function(AddProductToCart value)? addProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateProductQuantityEvent value)? udpateProductQuantity,
    TResult Function(RemoveProductFromCartEvent value)? removeProduct,
    TResult Function(AddProductToCart value)? addProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProductToCart implements CartBlocEvents {
  const factory AddProductToCart({required final ProductEntity product}) =
      _$AddProductToCartImpl;

  @override
  ProductEntity get product;
  @override
  @JsonKey(ignore: true)
  _$$AddProductToCartImplCopyWith<_$AddProductToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
