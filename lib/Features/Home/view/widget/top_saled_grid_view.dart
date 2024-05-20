import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_sales_item.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';

class TopSalesSliverGridView extends StatefulWidget {
  const TopSalesSliverGridView({
    super.key,
  });

  @override
  State<TopSalesSliverGridView> createState() => _TopSalesSliverGridViewState();
}

class _TopSalesSliverGridViewState extends State<TopSalesSliverGridView> {
  int currentindex = -1;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.sizeOf(context).width < 800
                ? 2
                : MediaQuery.sizeOf(context).width < 1200
                    ? 4
                    : MediaQuery.sizeOf(context).width < 1400
                        ? 6
                        : 8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            childAspectRatio: 0.63),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.itemDetailsView);
              },
              child: const TopSalesItem());
        });
  }
}
