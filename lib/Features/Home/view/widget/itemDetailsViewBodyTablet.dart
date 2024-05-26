import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/description_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_details_card.dart';

class ItemDetailsViewBodyTablet extends StatelessWidget {
  const ItemDetailsViewBodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 800,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            ProductDetailsCard(),
            SizedBox(height: 35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
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
