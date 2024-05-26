import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/description_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_details_card.dart';

class ItemDetailsViewBodyMobile extends StatelessWidget {
  const ItemDetailsViewBodyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailsCard(),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ProductInfoSection(),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DescriptionSection(),
            )
          ],
        ),
      ),
    );
  }
}
