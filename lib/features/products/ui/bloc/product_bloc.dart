import 'package:dummy_product/core/utilities/constant_values.dart';
import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/core/utilities/utility_functions.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:dummy_product/features/products/domain/usecases/get_product_usecase.dart';
import 'package:dummy_product/features/products/ui/bloc/product_event.dart';
import 'package:dummy_product/features/products/ui/bloc/product_query.dart';
import 'package:dummy_product/features/products/ui/bloc/product_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductScreenState> {
  final GetProductUseCase getProductUseCase;

  ProductBloc({
    required this.getProductUseCase,
  }) : super(ProductScreenState(dataResponse: DataIsLoading())) {
    on<GetAllProductsEvent>(onFetchProductTriggered);
    on<GetNextPageEvent>(onPaginationTriggered);
    on<FilterByCategoryEvent>(onCategoryAdded);
    on<RemoveCategoryFromFilterEvent>(onCategoryRemoved);
    on<SearchByKeyWordEvent>(onSearchByKeywordTriggered);
    on<FilterByPriceEvent>(onFilterByEventTriggered);
    on<UpdateSelectedProductEvent>(onUpdateSelectedProductTriggered);
  }

  void onFetchProductTriggered(event, emitter) async {
    var serverResponse = await getProductUseCase.call(GetProductParams());
    if (serverResponse is DataError) {
      var errorResponse = serverResponse as DataError;
      emitter(
        state.copyWith(
          dataResponse: DataError(
            errorResponse.errorCode,
            errorResponse.message,
          ),
        ),
      );
    } else {
      var listOfModels =
          (serverResponse as DataCompleted).data as List<ProductModel>;
      var productsList = DataCompleted(
        listOfModels.map((model) {
          var dateTime = DateTime.parse(model.meta.createdAt);
          return model.toEntity(
              productDate: dateTime,
              isNew: DateTime.now().difference(dateTime).inDays == 3);
        }).toList(),
      );
      List<String> categories =
          listOfModels.map((model) => model.category).toSet().toList();

      var maxAndMinPrices = getMaxAndMinPrices(productsList.data);

      emitter(
        state.copyWith(
          dataResponse: productsList,
          displayedList: productsList.data.take(productListPageSize).toList(),
          productCategories: categories,
          minPrice: maxAndMinPrices.first,
          maxPrice: maxAndMinPrices.last,
          query: state.query.copyWith(
            priceRange: RangeValues(
              maxAndMinPrices.first,
              maxAndMinPrices.last,
            ),
          ),
        ),
      );
    }
  }

  void onPaginationTriggered(event, emitter) {
    var pageOffset = state.currentListPage + 1;
    var nextDataIndex = (pageOffset * productListPageSize);
    var dataList = filterProductByQuery(state.query);

    if (nextDataIndex < dataList.length) {
      emitter(
        state.copyWith(
          displayedList: [
            ...state.displayedList,
            ...dataList
                .where((item) => dataList.indexOf(item) >= nextDataIndex)
                .take(productListPageSize),
          ],
          currentListPage: state.currentListPage + 1,
        ),
      );
    }
  }

  onCategoryAdded(event, emitter) {
    var filteringCategories = [...state.query.categories];
    filteringCategories.add(event.category);

    var newQuery = state.query.copyWith(categories: filteringCategories);
    var filtredProducts = filterProductByQuery(newQuery);

    emitter(
      state.copyWith(
        displayedList: filtredProducts.take(productListPageSize).toList(),
        query: newQuery,
        currentListPage: 0,
      ),
    );
  }

  onCategoryRemoved(event, emitter) {
    var filteringCategories = [...state.query.categories];
    filteringCategories.remove(event.category);
    var newQuery = state.query.copyWith(categories: filteringCategories);
    var filtredProducts = filterProductByQuery(newQuery);

    emitter(
      state.copyWith(
        displayedList: filtredProducts.take(productListPageSize).toList(),
        query: newQuery,
        currentListPage: 0,
      ),
    );
  }

  void onSearchByKeywordTriggered(event, emitter) {
    var newQuery = state.query.copyWith(searchQuery: event.search);
    var filtredProducts = filterProductByQuery(newQuery);
    emitter(
      state.copyWith(
        displayedList: filtredProducts.take(productListPageSize).toList(),
        query: newQuery,
        currentListPage: 0,
      ),
    );
  }

  void onFilterByEventTriggered(event, emitter) {
    var newQuery = state.query.copyWith(priceRange: event.rangeValues);
    var filtredProducts = filterProductByQuery(newQuery);
    emitter(
      state.copyWith(
        displayedList: filtredProducts.take(productListPageSize).toList(),
        query: newQuery,
        currentListPage: 0,
      ),
    );
  }

  List<ProductEntity> filterProductByQuery(
    ProductQuery query,
  ) {
    var products =
        (state.dataResponse as DataCompleted).data as List<ProductEntity>;
    return products.where((product) {
      return (query.searchQuery.isEmpty ||
              product.title.contains(query.searchQuery)) &&
          product.price >= query.priceRange.start &&
          product.price <= query.priceRange.end &&
          (query.categories.isEmpty ||
              query.categories.contains(product.category));
    }).toList();
  }

  void onUpdateSelectedProductTriggered(
      UpdateSelectedProductEvent event, emitter) {
    emitter(
      state.copyWith(
        selectedProduct: event.product,
      ),
    );
  }
}
