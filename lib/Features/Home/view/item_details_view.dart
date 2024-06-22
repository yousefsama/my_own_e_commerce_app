import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/ItemDetailsViewBody.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/add_to_bag_row.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/custom_floating_button.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/itemDetailsViewBodyTablet.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/item_details_body_desktop.dart';
import 'package:my_own_e_commerce_app/constance.dart';
import 'package:my_own_e_commerce_app/core/utils/adaptive_layout.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constance.primaryBackGroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: CustomSnackBar(text: 'Added to Cart'),
              ),
            ),
          );
        },
        child: const CustomFloatingButton(),
      ),
      body: AdaptiveLayout(
          mobileLayout: (context) =>
              ItemDetailsViewBodyMobile(productModel: productModel),
          tabletLayout: (context) =>
              ItemDetailsViewBodyTablet(productModel: productModel),
          desktopLayout: (context) => ItemDetailsViewBodyDesktop(
                productModel: productModel,
              )),
    );
  }
}
