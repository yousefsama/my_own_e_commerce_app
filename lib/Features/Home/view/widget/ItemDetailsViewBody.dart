import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/description_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_details_card.dart';

class ItemDetailsViewBodyMobile extends StatelessWidget {
  const ItemDetailsViewBodyMobile({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailsCard(productModel: productModel),
            const SizedBox(height: 35),
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   child: ProductInfoSection(),
            // ),
            // const SizedBox(
            //   height: 25,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DescriptionSection(productModel: productModel),
            )
          ],
        ),
      ),
    );
  }
}
