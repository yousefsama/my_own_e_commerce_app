// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/text_and_arrow_widget.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/favorite_body_mobile.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/Custom_header.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/cart_item_list_view.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class FavoriteBodyTabletLayout extends StatelessWidget {
  const FavoriteBodyTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2),
        child: const FavoriteBodyMobileLayout());
  }
}
