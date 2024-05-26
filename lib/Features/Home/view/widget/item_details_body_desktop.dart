import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/description_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_details_card.dart';

class ItemDetailsViewBodyDesktop extends StatelessWidget {
  const ItemDetailsViewBodyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25,
            ),
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
