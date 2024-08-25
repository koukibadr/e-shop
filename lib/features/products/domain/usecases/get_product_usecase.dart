import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/usecase.dart';
import 'package:e_shop/features/products/data/models/product_model.dart';
import 'package:e_shop/features/products/data/repositories/product_repository.dart';

class GetProductUseCase extends UseCase<DataResponse<List<ProductModel>>, GetProductParams> {
  final ProductRepository productRepository;
  GetProductUseCase({
    required this.productRepository,
  });

  @override
  Future<DataResponse<List<ProductModel>>> call(GetProductParams params) {
    return productRepository.getAllProducts();
  }
}

class GetProductParams {}
