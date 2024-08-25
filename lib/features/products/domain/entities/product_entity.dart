import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  factory ProductEntity({
    required int id,
    required String title,
    required String description,
    required String category,
    required String productImage,
    required DateTime productDate,
    required double price,
    required double discount,
    required bool isNew,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}
