import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/extensions.dart';
import 'package:e_shop/features/products/ui/bloc/product_bloc.dart';
import 'package:e_shop/features/products/ui/bloc/product_event.dart';
import 'package:e_shop/features/products/ui/bloc/product_state.dart';
import 'package:e_shop/features/products/ui/widgets/gridview_loading_shimmer.dart';
import 'package:e_shop/features/products/ui/widgets/price_range_filter_dialog.dart';
import 'package:e_shop/features/products/ui/widgets/product_list_item.dart';
import 'package:e_shop/features/products/ui/widgets/product_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
    return PopScope(
      onPopInvoked: (didPop) {
        SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: ProductScreenAppBar(
          onSearch: (searchQuery) {
            context.read<ProductBloc>().add(
                  SearchByKeyWordEvent(searchQuery ?? ''),
                );
          },
          onRangeFilterPressed: invokeRangeSliderFilter,
        ),
        body: Column(
          children: [
            BlocBuilder<ProductBloc, ProductScreenState>(
              builder: (context, state) {
                if (state.dataResponse is DataIsLoading) {
                  return const Expanded(
                    child: GridViewLoadingShimmer(),
                  );
                } else if (state.dataResponse is DataError) {
                  return Text(context.localization.errorProduct);
                } else {
                  if (state.displayedList.isEmpty) {
                    return Text(context.localization.noProducts);
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
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: ChoiceChip(
                                    selected: state.query.categories
                                        .contains(category),
                                    label: Text(category),
                                    onSelected: (selected) {
                                      if (selected) {
                                        context.read<ProductBloc>().add(
                                              FilterByCategoryEvent(
                                                category,
                                              ),
                                            );
                                      } else {
                                        context.read<ProductBloc>().add(
                                              RemoveCategoryFromFilterEvent(
                                                category,
                                              ),
                                            );
                                      }
                                    },
                                    backgroundColor: Colors.blue[100],
                                    selectedColor: Colors.blue,
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
                                return InkWell(
                                  onTap: () {
                                    context.read<ProductBloc>().add(
                                          UpdateSelectedProductEvent(
                                            state.displayedList[index],
                                          ),
                                        );
                                    GoRouter.of(context).push('/details');
                                  },
                                  child: ProductListItem(
                                    product: state.displayedList[index],
                                  ),
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
          heroTag: null,
          onPressed: () {
            GoRouter.of(context).push('/cart');
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void invokeRangeSliderFilter() {
    var productBloc = context.read<ProductBloc>();
    var state = productBloc.state;
    PriceRangeFilterDialog(
      maxPrice: state.maxPrice,
      minPrice: state.minPrice,
      rangeValues: state.query.priceRange,
      onPriceChanged: (newPriceRange) {
        productBloc.add(FilterByPriceEvent(newPriceRange));
      },
    ).show(context);
  }
}
