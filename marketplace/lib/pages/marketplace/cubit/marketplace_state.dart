part of 'marketplace_cubit.dart';

@immutable
abstract class MarketplaceState {}

class MarketplaceInitial extends MarketplaceState {}

class MarketplaceFetchProductsSuccess extends MarketplaceState {
  MarketplaceFetchProductsSuccess(this.products);

  final List<ProductModel> products;
}

class MarketplaceFetchProductsFailed extends MarketplaceState {}

class MarketplaceFetchLoading extends MarketplaceState {}
