import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class AddToBagRow extends StatelessWidget {
  const AddToBagRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Assets.imagesProductTestImage,
          width: 50,
          fit: BoxFit.fill,
        ),
        Text(
          'Added to bag',
          style: AppStyle.bold24.copyWith(color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: SvgPicture.asset(Assets.imagesArrowRight))
      ],
    );
  }
}
