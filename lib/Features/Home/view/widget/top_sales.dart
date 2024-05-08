import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_saled_and_explorer_bar.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_sales_item.dart';

class TopSalesSection extends StatelessWidget {
  const TopSalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TopSaledAndExplorerBar(),
        SizedBox(height: 20),
        TopSalesItem(),
      ],
    );
  }
}
