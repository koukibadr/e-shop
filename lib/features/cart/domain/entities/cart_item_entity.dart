import 'package:e_shop/features/products/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_entity.freezed.dart';

@freezed
class CartItemEntity with _$CartItemEntity {
  
  factory CartItemEntity({
    @Default(1) int quantity,
    required ProductEntity product,
  }) = _CartItemEntity;


}