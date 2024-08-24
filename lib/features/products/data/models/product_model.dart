import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {

  const ProductModel._();

  factory ProductModel({
    required int id,
    required String title,
    required String description,
    required String category,
    required List<String> images,
    required String thumbnail,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String warrantyInformation,
    required String shippingInformation,
    required ProductMeta meta,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  ProductEntity toEntity({required DateTime productDate,required bool isNew}) {
    return ProductEntity(
      id: id,
      title: title,
      description: description,
      category: category,
      productImage: thumbnail,
      productDate: productDate,
      price: price,
      discount: discountPercentage,
      isNew: isNew,
    );
  }
}


@freezed
class ProductMeta with _$ProductMeta {

  factory ProductMeta({
    required String createdAt,
    required String updatedAt,
  }) = _ProductMeta;

  factory ProductMeta.fromJson(Map<String,dynamic> json) => _$ProductMetaFromJson(json);

}
