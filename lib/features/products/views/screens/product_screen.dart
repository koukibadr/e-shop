import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/core/widgets/text_field_widget.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:dummy_product/features/products/views/bloc/product_bloc.dart';
import 'package:dummy_product/features/products/views/bloc/product_event.dart';
import 'package:dummy_product/features/products/views/bloc/product_state.dart';
import 'package:dummy_product/features/products/views/widgets/gridview_loading_shimmer.dart';
import 'package:dummy_product/features/products/views/widgets/product_list_item.dart';
import 'package:dummy_product/features/products/views/widgets/product_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductBloc>().add(ProductEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProductScreenAppBar(),
      body: BlocBuilder<ProductBloc, ProductScreenState>(
        builder: (context, state) {
          if (state.dataResponse is DataIsLoading) {
            //TODO display loading widget
            return Column(
              children: [Expanded(child: const GridViewLoadingShimmer())],
            );
          } else if (state.dataResponse is DataError) {
            //TODO display error message
            return Column(
              children: [Text('Error')],
            );
          } else {
            var data = (state.dataResponse as DataCompleted).data
                as List<ProductEntity>;
            return Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.0,
                        mainAxisSpacing: 30,
                      ),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ProductListItem(
                          product: data[index],
                        );
                      },
                    ),
                  ),
                )
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart_outlined,
        ),
      ),
    );
  }
}
