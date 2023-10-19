import 'package:flutter/material.dart';
import 'home_best_seller_item.dart';

class HomeBestSellerListView extends StatelessWidget {
  const HomeBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => const HomeBestSellerItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 72,
    );
  }
}
