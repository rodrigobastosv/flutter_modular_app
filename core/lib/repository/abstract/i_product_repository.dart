import 'package:core/model/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getAllProducts();
}
