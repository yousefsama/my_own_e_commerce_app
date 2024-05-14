import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class MyCartItemDetails extends StatelessWidget {
  const MyCartItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Camisa',
          style: AppStyle.bold24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(Assets.imagesProductInfoTest),
            Text(
              'Negro',
              style:
                  AppStyle.medium16Black.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '40\$',
              style: AppStyle.bold24,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '/',
              style: AppStyle.medium16grey.copyWith(color: Colors.grey),
            ),
            Text('Talla',
                style: AppStyle.medium16grey.copyWith(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
