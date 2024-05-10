import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class LovedIcon extends StatelessWidget {
  const LovedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.imagesLovedIcon,
      colorFilter: const ColorFilter.mode(Color(0xffF26F3F), BlendMode.srcIn),
    );
  }
}

class NotLovedIcon extends StatelessWidget {
  const NotLovedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.imagesHeartIcon2,
      colorFilter: const ColorFilter.mode(Color(0xffF26F3F), BlendMode.srcIn),
    );
  }
}
