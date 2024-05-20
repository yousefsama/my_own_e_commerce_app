import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
              image: AssetImage(
                Assets.imagesUserImage,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
