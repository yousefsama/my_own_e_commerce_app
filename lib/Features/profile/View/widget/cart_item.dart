import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/custom_counter.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/mycart_item_details.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  Assets.imagesProductTestImage,
                ),
              ),
            )),
          )),
          const SizedBox(
            width: 10,
          ),
          const Expanded(
            child: MyCartItemDetails(),
          ),
          const CustomCounter()
        ],
      ),
    );
  }
}
