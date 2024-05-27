import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/category_model.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class InActiveCategoryItem extends StatelessWidget {
  const InActiveCategoryItem({super.key, required this.categorymodel});
  final Categorymodel categorymodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffF2F2F2)),
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
                      padding: const EdgeInsets.all(3),
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: Image.network(categorymodel.image)))),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              categorymodel.name,
              style: AppStyle.medium18Black(context)
                  .copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
