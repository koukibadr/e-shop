import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:dummy_product/features/products/domain/usecases/get_product_usecase.dart';
import 'package:dummy_product/features/products/views/bloc/product_event.dart';
import 'package:dummy_product/features/products/views/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductScreenState> {
  final GetProductUseCase getProductUseCase;

  ProductBloc({
    required this.getProductUseCase,
  }) : super(ProductScreenState(dataResponse: DataIsLoading())) {
    on<ProductEvent>((event, emitter) async {
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
        emitter(
          state.copyWith(
            dataResponse: DataCompleted(
              listOfModels.map((model) {
                var dateTime = DateTime.parse(model.meta.createdAt);
                return model.toEntity(dateTime);
              }).toList(),
            ),
          ),
        );
      }
    });
  }
}
