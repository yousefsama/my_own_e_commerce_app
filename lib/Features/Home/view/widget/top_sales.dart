import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/text_and_arrow_widget.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/top_sales_item.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class TopSalesSection extends StatelessWidget {
  const TopSalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextAndArrow(
              text: 'Top Sales',
              textStyle: AppStyle.bold24,
              icon: RotatedBox(
                quarterTurns: 1,
                child: SvgPicture.asset(
                  Assets.imagesArrowRightIcon,
                  color: const Color(0xffF26F3F),
                ),
              ),
            ),
            CustomTextAndArrow(
              text: 'Explore',
              textStyle:
                  AppStyle.bold24.copyWith(color: const Color(0xffA9A9A9)),
              icon: SvgPicture.asset(
                Assets.imagesArrowRightIcon,
                color: const Color(0xffF26F3F),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // const TopSaledItem(),
      ],
    );
  }
}
