import 'package:e_shop/features/products/domain/entities/product_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_events.freezed.dart';

@freezed
sealed class CartBlocEvents with _$CartBlocEvents {
  const factory CartBlocEvents.udpateProductQuantity({
    required int quantity,
    required ProductEntity product,
  }) = UpdateProductQuantityEvent;

  const factory CartBlocEvents.removeProduct({
    required ProductEntity product,
  }) = RemoveProductFromCartEvent;

  const factory CartBlocEvents.addProduct({
    required ProductEntity product,
  }) = AddProductToCart;
}
