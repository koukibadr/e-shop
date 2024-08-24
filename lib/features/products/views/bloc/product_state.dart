import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductScreenState with _$ProductScreenState {
  factory ProductScreenState({
    @Default([]) List<ProductModel> productModel,
  }) = _ProductScreenState;
}
