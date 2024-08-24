import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:dummy_product/features/products/ui/bloc/product_query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductScreenState with _$ProductScreenState {
  factory ProductScreenState({
    required DataResponse<List<ProductEntity>> dataResponse,
    @Default([]) List<ProductEntity> displayedList,
    @Default([]) List<String> productCategories,
    @Default(0) int currentListPage,
    @Default(0) double minPrice,
    @Default(0) double maxPrice,
    @Default(ProductQuery()) ProductQuery query,
    ProductEntity? selectedProduct,
  }) = _ProductScreenState;
}
