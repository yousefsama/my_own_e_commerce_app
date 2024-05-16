import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_item_list_view.dart';
import 'package:my_own_e_commerce_app/constance.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product info",
          style:
              AppStyle.bold24(context).copyWith(color: Constance.orangeColor),
        ),
        const SizedBox(
          height: 8,
        ),
        const ProductInfoItemListView(),
      ],
    );
  }
}
