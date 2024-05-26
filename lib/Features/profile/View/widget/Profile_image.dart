import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800
              ? MediaQuery.sizeOf(context).width * 0.25
              : MediaQuery.sizeOf(context).width * 0.22),
      child: const FittedBox(
        fit: BoxFit.fill,
        child: CircleAvatar(
          backgroundImage: AssetImage(Assets.imagesUserImage),
        ),
      ),
    );
  }
}
