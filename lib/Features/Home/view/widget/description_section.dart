import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: AppStyle.bold24(context),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          productModel.description ?? 'there is no Description',
          style: AppStyle.medium16grey(context).copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
