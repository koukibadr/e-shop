import 'package:dummy_product/core/api/api_handler.dart';
import 'package:dummy_product/core/utilities/data_response.dart';
import 'package:dummy_product/features/products/data/models/product_model.dart';
import 'package:dummy_product/features/products/data/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  ApiHelper apiHelper;

  ProductRepositoryImpl({
    required this.apiHelper,
  });

  @override
  Future<DataResponse<List<ProductModel>>> getAllProducts() async {
    var serverResponse = await apiHelper.dio.get(
      ApiEndpoints.productEndpoint,
    );
    try {
      var serverData = serverResponse.data['products'];
      return DataResponse.completed(List<ProductModel>.from(
          serverData.map((e) => ProductModel.fromJson(e))));
    } catch (e) {
      return DataResponse.error(
        serverResponse.statusCode ?? 0,
        serverResponse.statusMessage ?? '',
      );
    }
  }
}
