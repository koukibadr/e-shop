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


}