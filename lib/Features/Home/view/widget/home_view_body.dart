import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/category_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/search_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_sales.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(Assets.imagesLogo)),
            const SizedBox(
              height: 40,
            ),
            const SearchSection(),
            const SizedBox(height: 25),
            const CategorySection(),
            const SizedBox(height: 25),
            const TopSalesSection(),
          ],
        ),
      ),
    ));
  }
}
