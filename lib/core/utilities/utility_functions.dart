import 'package:e_shop/features/products/domain/entities/product_entity.dart';

List<double> getMaxAndMinPrices(List<ProductEntity> products) {
  var listOfPrices = products.map((product) => product.price).toList();
  listOfPrices.sort((a, b) => a.compareTo(b));
  return [listOfPrices.first, listOfPrices.last];
}
