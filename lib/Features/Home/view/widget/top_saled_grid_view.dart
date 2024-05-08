import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_sales_item.dart';

class TopSalesSliverGridView extends StatelessWidget {
  const TopSalesSliverGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            childAspectRatio: 0.63),
        itemBuilder: (context, index) {
          return const TopSalesItem();
        });
  }
}
