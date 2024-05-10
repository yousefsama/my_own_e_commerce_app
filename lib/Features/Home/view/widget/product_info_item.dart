import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProductInfoItem extends StatelessWidget {
  const ProductInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesProductInfoTest),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Size sd sdad s',
            style: AppStyle.medium18Black.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
