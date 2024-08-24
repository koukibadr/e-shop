import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';

abstract class ProductRepository {
  Future<DataResponse<List<ProductModel>>> getAllProducts();
}
