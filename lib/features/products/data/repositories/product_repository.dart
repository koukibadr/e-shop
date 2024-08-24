import 'package:dummy_product/features/products/data/models/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getAllProducts();
}
