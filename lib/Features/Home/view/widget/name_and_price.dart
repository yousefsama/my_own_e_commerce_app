import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class NameAndPrice extends StatelessWidget {
  const NameAndPrice({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel.name,
            style: AppStyle.bold24(context).copyWith(
              color: Colors.white,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Text(
                '${productModel.price}\$',
                style: AppStyle.bold40(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
