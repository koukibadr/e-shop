import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
sealed class ProductEvent with _$ProductEvent {
  
  factory ProductEvent.getAllData() = GetAllProductsEvent;
  factory ProductEvent.getNextPage() = GetNextPageEvent;
  factory ProductEvent.filterByCategory(String category) = FilterByCategoryEvent;
  factory ProductEvent.removeCategoryFromFilter(String category) = RemoveCategoryFromFilterEvent;
  factory ProductEvent.searchByKeyWord(String search) = SearchByKeyWordEvent;
  factory ProductEvent.filterByPrice(RangeValues rangeValues) = FilterByPriceEvent;
  factory ProductEvent.udpateSelectedProduct(ProductEntity product) = UpdateSelectedProductEvent;


}