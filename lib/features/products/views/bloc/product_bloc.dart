import 'package:dummy_product/core/utilities/constant_values.dart';
import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:dummy_product/features/products/domain/entities/product_entity.dart';
import 'package:dummy_product/features/products/domain/usecases/get_product_usecase.dart';
import 'package:dummy_product/features/products/views/bloc/product_event.dart';
import 'package:dummy_product/features/products/views/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductScreenState> {
  final GetProductUseCase getProductUseCase;

  ProductBloc({
    required this.getProductUseCase,
  }) : super(ProductScreenState(dataResponse: DataIsLoading())) {
    on<GetAllProductsEvent>((event, emitter) async {
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
            return model.toEntity(dateTime);
          }).toList(),
        );
        List<String> categories =
            listOfModels.map((model) => model.category).toSet().toList();
        emitter(
          state.copyWith(
            dataResponse: productsList,
            displayedList: productsList.data.take(productListPageSize).toList(),
            productCategories: categories,
          ),
        );
      }
    });
    on<GetNextPageEvent>((event, emitter) {
      var pageOffset = state.currentListPage + 1;
      var nextDataIndex = (pageOffset * productListPageSize);
      var dataList =
          (state.dataResponse as DataCompleted).data as List<ProductEntity>;
      if (state.selectedProductCategories.isNotEmpty) {
        dataList = dataList
            .where((item) =>
                state.selectedProductCategories.contains(item.category))
            .toList();
      }
      if (state.filteringQuery.isNotEmpty) {
        dataList = dataList
            .where((product) => product.title.contains(state.filteringQuery))
            .toList();
      }
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
    });
    on<FilterByCategoryEvent>((event, emitter) {
      var dataList =
          (state.dataResponse as DataCompleted).data as List<ProductEntity>;
      dataList = dataList
          .where((product) => product.title.contains(state.filteringQuery))
          .toList();
      var filteringCategories = [...state.selectedProductCategories];
      filteringCategories.add(event.category);
      var allFiltredProducts = dataList.where((item) {
        return filteringCategories.contains(item.category);
      });
      emitter(
        state.copyWith(
            displayedList:
                allFiltredProducts.take(productListPageSize).toList(),
            selectedProductCategories: filteringCategories,
            currentListPage: 0),
      );
    });
    on<RemoveCategoryFromFilterEvent>((event, emitter) {
      var dataList =
          (state.dataResponse as DataCompleted).data as List<ProductEntity>;
      dataList = dataList
          .where((product) => product.title.contains(state.filteringQuery))
          .toList();
      var filteringCategories = [...state.selectedProductCategories];
      filteringCategories.remove(event.category);
      List<ProductEntity> allFiltredProducts;
      if (filteringCategories.isEmpty) {
        allFiltredProducts = dataList;
      } else {
        allFiltredProducts = dataList.where((item) {
          return filteringCategories.contains(item.category);
        }).toList();
      }

      emitter(
        state.copyWith(
            displayedList:
                allFiltredProducts.take(productListPageSize).toList(),
            selectedProductCategories: filteringCategories,
            currentListPage: 0),
      );
    });

    on<SearchByKeyWordEvent>((event, emitter) {
      var dataList =
          (state.dataResponse as DataCompleted).data as List<ProductEntity>;

      if (state.selectedProductCategories.isNotEmpty) {
        dataList = dataList
            .where((product) =>
                state.selectedProductCategories.contains(product.category))
            .toList();
      }

      if (event.search.isNotEmpty) {
        dataList = dataList
            .where((product) => product.title
                .toLowerCase()
                .contains(event.search.toLowerCase()))
            .toList();
      }

      emitter(
        state.copyWith(
          displayedList: dataList.take(productListPageSize).toList(),
          filteringQuery: event.search,
          currentListPage: 0,
        ),
      );
    });
  }
}
