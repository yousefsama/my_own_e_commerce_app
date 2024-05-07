import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/category_card_item.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Categories',
          style: AppStyle.bold24,
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 80,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: CategoryCardItem(),
                );
              }),
        ),
      ],
    );
  }
}
