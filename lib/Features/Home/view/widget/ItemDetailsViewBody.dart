import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_Info_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/product_details_card.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class ItemDetailsViewBody extends StatelessWidget {
  const ItemDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
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

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Description',
          style: AppStyle.bold24,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.',
          style: AppStyle.medium16grey.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
