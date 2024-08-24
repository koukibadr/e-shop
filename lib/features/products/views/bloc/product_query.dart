import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_query.freezed.dart';

@freezed
class ProductQuery with _$ProductQuery {
  const ProductQuery._();

  const factory ProductQuery({
    @Default([]) List<String> categories,
    @Default(RangeValues(0, 0)) RangeValues priceRange,
    @Default('') String searchQuery,
  }) = _ProductQuery;
}
