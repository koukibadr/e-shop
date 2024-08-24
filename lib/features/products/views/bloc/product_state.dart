import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductScreenState with _$ProductScreenState {
  factory ProductScreenState({
    required DataResponse<List<ProductEntity>> dataResponse,
    @Default(true) bool dataIsLoading,
  }) = _ProductScreenState;
}
