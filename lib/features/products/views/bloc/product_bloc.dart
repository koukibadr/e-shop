import 'package:dummy_product/features/products/domain/usecases/get_product_usecase.dart';
import 'package:dummy_product/features/products/views/bloc/product_event.dart';
import 'package:dummy_product/features/products/views/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductScreenState> {
  final GetProductUseCase getProductUseCase;

  ProductBloc({
    required this.getProductUseCase,
  }) : super(ProductScreenState()) {
    on<ProductEvent>((event, emitter) {
      getProductUseCase.call(GetProductParams());
    });
  }
}
