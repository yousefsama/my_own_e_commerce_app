import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/cart/data/cart_model.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class MyCartItemDetails extends StatelessWidget {
  const MyCartItemDetails({
    super.key,
    required this.cartModel,
  });
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cartModel.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppStyle.medium20(context),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                cartModel.price,
                style: AppStyle.bold24(context),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '\$',
                style: AppStyle.bold24(context).copyWith(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
