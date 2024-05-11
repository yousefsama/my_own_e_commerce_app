import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/constance.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Constance.navigationBarColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesShoppingBag),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Add to bag',
              style: AppStyle.bold24.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
