import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:core/model/product_model.dart';
import 'package:meta/meta.dart';

part 'marketplace_state.dart';

class MarketplaceCubit extends Cubit<MarketplaceState> {
  MarketplaceCubit(this.repository) : super(MarketplaceInitial());

  final IProductRepository repository;

  List<ProductModel>? products;

  Future<void> getAllProducts() async {
    try {
      emit(MarketplaceFetchLoading());
      final products = await repository.getAllProducts();
      emit(MarketplaceFetchProductsSuccess(products));
    } on Exception {
      emit(MarketplaceFetchProductsFailed());
    }
  }
}
