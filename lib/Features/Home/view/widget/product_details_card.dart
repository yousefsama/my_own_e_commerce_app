import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/details_app_bar.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/more_images.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/name_and_price.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProductDetailsCard extends StatelessWidget {
  const ProductDetailsCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.55,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(productModel.image),
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20.0, left: 30, right: 30, bottom: 30),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DeatailsAppBar(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NameAndPrice(productModel: productModel),
                  const MoreImagesListView(),
                ],
              ),
            ]),
      ),
    );
  }
}
