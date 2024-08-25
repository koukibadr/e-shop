import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/features/products/data/models/product_model.dart';

abstract class ProductRepository {
  Future<DataResponse<List<ProductModel>>> getAllProducts();
}
