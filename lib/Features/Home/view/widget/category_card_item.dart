import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/category_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Inactive_category_item.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/active_category_item.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
    required this.isActive,
    required this.categorymodel,
  });
  final bool isActive;
  final Categorymodel categorymodel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveCategoryItem(
            categorymodel: categorymodel,
          )
        : InActiveCategoryItem(
            categorymodel: categorymodel,
          );
  }
}
