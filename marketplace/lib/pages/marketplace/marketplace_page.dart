import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketplace/main.dart';
import 'package:marketplace/pages/marketplace/cubit/marketplace_cubit.dart';
import 'package:marketplace/pages/marketplace/marketplace_widget.dart';

class MarketplacePage extends StatelessWidget {
  const MarketplacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MarketplaceCubit>(
      create: (_) => MarketplaceCubit(appInjector.get<IProductRepository>())
        ..getAllProducts(),
      child: MarketplaceWidget(),
    );
  }
}
