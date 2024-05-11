import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class DeatailsAppBar extends StatelessWidget {
  const DeatailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            Assets.imagesArrowleft,
            height: 35,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          height: 35,
        ),
        SvgPicture.asset(
          Assets.imagesSolidLove,
          height: 35,
        ),
      ],
    );
  }
}
