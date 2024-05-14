import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/category_section.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_saled_grid_view.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class CollectionBody extends StatelessWidget {
  const CollectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SvgPicture.asset(
            Assets.imagesLogo,
          )),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          const SliverToBoxAdapter(
            child: Text('discover new things', style: AppStyle.bold34),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          const SliverToBoxAdapter(child: CategorySection()),
          const SliverToBoxAdapter(child: SizedBox(height: 15)),
          const TopSalesSliverGridView(),
        ],
      ),
    ));
  }
}