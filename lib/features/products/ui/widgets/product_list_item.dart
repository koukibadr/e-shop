import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/features/products/domain/entities/product_entity.dart';
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
            child: Stack(
              children: [
                if (product.price.round() < 10)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Text(
                        'Vente Flash',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: product.id,
                    child: CachedNetworkImage(
                      imageUrl: product.productImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (product.isNew)
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Text(
                        'Nouveau',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                generateProductTitle(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget generateProductTitle(BuildContext context) {
    if (product.price.round() < 50) {
      return Text.rich(
        TextSpan(
          text: '${product.price.toStringAsFixed(2)}\$',
          children: [
            TextSpan(
              text: ' ${product.discount.toStringAsFixed(2)}%',
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      );
    } else {
      return Text(
        '${product.price.toStringAsFixed(2)}\$',
        style: Theme.of(context).textTheme.bodyLarge,
      );
    }
  }
}
