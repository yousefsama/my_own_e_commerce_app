import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
              image: AssetImage(Assets.imagesUserImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
