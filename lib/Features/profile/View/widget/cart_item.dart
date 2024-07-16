import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/cart/data/cart_model.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/custom_counter.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/mycart_item_details.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartModel});
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: AspectRatio(
              aspectRatio: 0.85,
              child: Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(cartModel.image),
                ),
              )),
            ),
          ),
          MyCartItemDetails(cartModel: cartModel),
          const CustomCounter()
        ],
      ),
    );
  }
}
