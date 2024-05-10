import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_info_item.dart';

class ProductInfoItemListView extends StatelessWidget {
  const ProductInfoItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const ProductInfoItem();
        },
      ),
    );
  }
}
