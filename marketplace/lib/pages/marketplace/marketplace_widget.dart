import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/pages/marketplace/cubit/marketplace_cubit.dart';

class MarketplaceWidget extends StatelessWidget {
  const MarketplaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MarketplaceCubit, MarketplaceState>(
        builder: (_, state) {
          if (state is MarketplaceFetchProductsSuccess) {
            return Column(
              children: [
                Text('Ok'),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('checkout');
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text(
                    'Ir pro carrinho',
                  ),
                ),
              ],
            );
          } else if (state is MarketplaceFetchProductsFailed) {
            return Text('Deu ruim');
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
