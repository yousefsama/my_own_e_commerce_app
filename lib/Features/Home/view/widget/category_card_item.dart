import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Inactive_category_item.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/active_category_item.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive ? const ActiveCategoryItem() : const InActiveCategoryItem();
  }
}
