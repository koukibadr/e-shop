import 'package:dummy_product/core/utilities/usecase.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:dummy_product/features/products/data/repositories/product_repository.dart';

class GetProductUseCase extends UseCase<List<ProductModel>, GetProductParams> {
  final ProductRepository productRepository;
  GetProductUseCase({
    required this.productRepository,
  });

  @override
  Future<List<ProductModel>> call(GetProductParams params) {
    return productRepository.getAllProducts();
  }
}

class GetProductParams {}
