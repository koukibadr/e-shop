import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_shop/core/widgets/confirmation_dialog.dart';
import 'package:e_shop/features/cart/domain/entities/cart_item_entity.dart';
import 'package:e_shop/features/products/ui/widgets/quatity_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartListItem extends StatelessWidget {
  final CartItemEntity cartItem;
  final Function(int) onQuantityChanged;
  final Function() onItemRemoved;

  const CartListItem({
    super.key,
    required this.cartItem,
    required this.onItemRemoved,
    required this.onQuantityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Card(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl: cartItem.product.productImage,
                        fit: BoxFit.contain,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(cartItem.product.title,
                                maxLines: 1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                            Text(
                                '${cartItem.product.price.toStringAsFixed(2)} \$'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  QuantityWidget(
                    onQuantityChanged: onQuantityChanged,
                    initialQuantity: cartItem.quantity,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      ConfirmationDialog(
                        description:
                            'Would you like to remove this product from cart ?',
                        onConfirm: () {
                          GoRouter.of(context).pop();
                          onItemRemoved.call();
                        },
                        title: cartItem.product.title,
                      ).show(context);
                    },
                    child: const Icon(
                      Icons.remove_circle_sharp,
                      color: Colors.red,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
