import 'package:e_shop/features/cart/ui/bloc/cart_bloc.dart';
import 'package:e_shop/features/cart/ui/bloc/cart_events.dart';
import 'package:e_shop/features/cart/ui/bloc/cart_state.dart';
import 'package:e_shop/features/cart/ui/widgets/cart_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchable_listview/searchable_listview.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Your cart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<CartBloc, CartScreenState>(
              builder: (context, state) {
                if (state.cartItems.isEmpty) {
                  //TODO display empty widget
                  return Container();
                }
                return SearchableList(
                  initialList: state.cartItems,
                  itemBuilder: (item) {
                    return CartListItem(
                      cartItem: item,
                      onItemRemoved: () {
                        context.read<CartBloc>().add(
                              RemoveProductFromCartEvent(
                                product: item.product,
                              ),
                            );
                      },
                      onQuantityChanged: (quantity) {
                        context.read<CartBloc>().add(
                              UpdateProductQuantityEvent(
                                quantity: quantity,
                                product: item.product,
                              ),
                            );
                      },
                    );
                  },
                  filter: (query) {
                    return state.cartItems
                        .where(
                          (item) => item.product.title.toLowerCase().contains(
                                query.toLowerCase(),
                              ),
                        )
                        .toList();
                  },
                  inputDecoration: const InputDecoration(
                    hintText: 'Search',
                  ),
                  displaySearchIcon: false,
                );
              },
            ),
          ),
          Container(
            color: const Color(0xFFF6F6F6),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue to payment',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
