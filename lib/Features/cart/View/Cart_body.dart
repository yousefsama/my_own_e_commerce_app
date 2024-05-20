import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/text_and_arrow_widget.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/Custom_header.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/cart_item_list_view.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class CartBodyMobileLayout extends StatelessWidget {
  const CartBodyMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              ),
            ),
            const SliverToBoxAdapter(
                child: LogoAndText(image: Assets.imagesCart, text: "My Cart")),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const CartItemListView(),
            const SliverToBoxAdapter(
              child: SizedBox(height: 30),
            ),
            SliverToBoxAdapter(
              child: CustomTextAndArrow(
                  text: 'Aggregate more products',
                  icon: SvgPicture.asset(
                    Assets.imagesArrowRightIcon,
                    color: Colors.black,
                  ),
                  textStyle: AppStyle.bold24(context)),
            ),
          ],
        ),
      ),
    );
  }
}
