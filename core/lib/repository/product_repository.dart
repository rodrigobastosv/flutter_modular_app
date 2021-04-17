import 'package:core/model/product_model.dart';
import 'package:core/repository/abstract/i_product_repository.dart';

class ProductRepository implements IProductRepository {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    await Future.delayed(Duration(seconds: 3));
    return Future.value(
      <ProductModel>[
        ProductModel(id: 1, name: 'Produto 1', price: 1),
        ProductModel(id: 2, name: 'Produto 2', price: 2),
        ProductModel(id: 3, name: 'Produto 3', price: 3),
        ProductModel(id: 4, name: 'Produto 4', price: 4),
        ProductModel(id: 5, name: 'Produto 5', price: 5),
        ProductModel(id: 6, name: 'Produto 6', price: 6),
      ],
    );
  }
}
