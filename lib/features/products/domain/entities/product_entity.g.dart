// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      productImage: json['productImage'] as String,
      productDate: DateTime.parse(json['productDate'] as String),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'productImage': instance.productImage,
      'productDate': instance.productDate.toIso8601String(),
      'price': instance.price,
    };
