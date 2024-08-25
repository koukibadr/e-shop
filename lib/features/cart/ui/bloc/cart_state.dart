
import 'package:e_shop/features/cart/domain/entities/cart_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartScreenState  with _$CartScreenState {
  factory CartScreenState({
    @Default([]) List<CartItemEntity> cartItems,
  }) = _CartScreenState;
}