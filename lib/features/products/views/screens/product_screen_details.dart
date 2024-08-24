import 'package:cached_network_image/cached_network_image.dart';
import 'package:dummy_product/features/cart/views/bloc/cart_bloc.dart';
import 'package:dummy_product/features/cart/views/bloc/cart_events.dart';
import 'package:dummy_product/features/cart/views/bloc/cart_state.dart';
import 'package:dummy_product/features/products/views/bloc/product_bloc.dart';
import 'package:dummy_product/features/products/views/bloc/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              state.selectedProduct?.title ?? '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      if ((state.selectedProduct?.price.round() ?? 0) < 10)
                        Align(
                          alignment: Alignment.bottomCenter,
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
                          tag: state.selectedProduct?.id ?? '',
                          child: CachedNetworkImage(
                            imageUrl: state.selectedProduct?.productImage ?? '',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.selectedProduct?.title ?? '',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(state.selectedProduct?.description ?? ''),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text:
                                '${state.selectedProduct?.price.toStringAsFixed(2)}\$',
                            children: [
                              TextSpan(
                                text:
                                    ' ${state.selectedProduct?.discount.toStringAsFixed(2)}%',
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color(0xFFF6F6F6),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BlocBuilder<CartBloc, CartScreenState>(
                            builder: (context, cartState) {
                              var productsInCart =
                                  cartState.cartItems.map((e) => e.product);
                              bool productExist = productsInCart
                                  .contains(state.selectedProduct);
                              return ElevatedButton(
                                onPressed: () {
                                  if (productExist) {
                                    context.read<CartBloc>().add(
                                          RemoveProductFromCartEvent(
                                            product: state.selectedProduct!,
                                          ),
                                        );
                                  } else if (state.selectedProduct != null) {
                                    context.read<CartBloc>().add(
                                          AddProductToCart(
                                            product: state.selectedProduct!,
                                          ),
                                        );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      productExist ? Colors.red : Colors.blue,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      productExist
                                          ? 'Remove from cart'
                                          : 'Add to cart',
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
