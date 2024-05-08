import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class LoginWithAnotherAccountListView extends StatelessWidget {
  const LoginWithAnotherAccountListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesFacebookLogo, height: 50),
        const SizedBox(
          width: 16,
        ),
        SvgPicture.asset(
          Assets.imagesGoogleLogo,
          height: 50,
        ),
        const SizedBox(
          width: 16,
        ),
        SvgPicture.asset(
          Assets.imagesTwitterLogo,
          height: 50,
        ),
        const SizedBox(
          width: 16,
        ),
        SvgPicture.asset(
          Assets.imagesAppleLogo,
          height: 50,
        ),
      ],
    );
  }
}
