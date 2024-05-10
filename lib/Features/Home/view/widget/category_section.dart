import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/category_list_view.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: AppStyle.bold24,
        ),
        SizedBox(height: 20),
        CategoryListView(),
      ],
    );
  }
}
