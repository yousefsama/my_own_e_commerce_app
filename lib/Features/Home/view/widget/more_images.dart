import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class MoreImagesListView extends StatelessWidget {
  const MoreImagesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: ImageItem(),
          );
        },
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage(Assets.imagesMoreImage),
        ),
      ),
    );
  }
}
