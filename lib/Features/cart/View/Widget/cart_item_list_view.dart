import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/cart_item.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(top: 15),
          child: CartItem(),
        );
      },
    );
  }
}
