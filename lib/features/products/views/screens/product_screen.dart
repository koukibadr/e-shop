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
  late ScrollController gridScrollController;

  @override
  void initState() {
    super.initState();
    gridScrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductBloc>().add(GetAllProductsEvent());
      gridScrollController.addListener(() {
        if (gridScrollController.position.atEdge &&
            gridScrollController.position.pixels != 0) {
          context.read<ProductBloc>().add(GetNextPageEvent());
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProductScreenAppBar(),
      body: Column(
        children: [
          BlocBuilder<ProductBloc, ProductScreenState>(
            builder: (context, state) {
              if (state.dataResponse is DataIsLoading) {
                return const Expanded(
                  child: GridViewLoadingShimmer(),
                );
              } else if (state.dataResponse is DataError) {
                return const Text('Error');
              } else {
                if (state.displayedList.isEmpty) {
                  //TODO dsplay empty view
                }
                return Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: SizedBox(
                          height: 40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.productCategories.length,
                            itemBuilder: (context, index) {
                              var category = state.productCategories[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ChoiceChip(
                                  selected: state.selectedProductCategories.contains(category),
                                  label: Text(category),
                                  onSelected: (selected) {
                                    if(selected){
                                      context.read<ProductBloc>().add(FilterByCategoryEvent(category));
                                    }else{
                                      context.read<ProductBloc>().add(RemoveCategoryFromFilterEvent(category));
                                    }
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 10,
                          ),
                          child: GridView.builder(
                            controller: gridScrollController,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.0,
                              mainAxisSpacing: 30,
                            ),
                            itemCount: state.displayedList.length,
                            itemBuilder: (context, index) {
                              return ProductListItem(
                                product: state.displayedList[index],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
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
