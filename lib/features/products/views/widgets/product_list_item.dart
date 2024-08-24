import 'package:cached_network_image/cached_network_image.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

class ProductListItem extends StatelessWidget {
  final ProductEntity product;

  const ProductListItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: CachedNetworkImage(
              imageUrl: product.productImage,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    product.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Text(
                  '${product.price.toStringAsFixed(2)}\$',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
