import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  
  factory ProductEntity({
    required String title,
    required String description,
    required String category,
    required String productImage,
    required DateTime productDate,
    required double price,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String,dynamic> json) => _$ProductEntityFromJson(json);

}