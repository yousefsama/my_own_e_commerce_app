import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10.0, top: 10, bottom: 10, right: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Card(
                  elevation: 0,
                  color: const Color(0xffF2F2F2),
                  child: Padding(
                      padding: const EdgeInsets.all(13),
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(Assets.imagesCategorytest)))),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Clothes',
              style:
                  AppStyle.medium18Black.copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
