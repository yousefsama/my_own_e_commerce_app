import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/text_and_arrow_widget.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class TopSaledAndExplorerBar extends StatelessWidget {
  const TopSaledAndExplorerBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTextAndArrow(
          text: 'Top Sales',
          textStyle: AppStyle.bold24(context),
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
              AppStyle.bold24(context).copyWith(color: const Color(0xffA9A9A9)),
          icon: SvgPicture.asset(
            Assets.imagesArrowRightIcon,
            color: const Color(0xffF26F3F),
          ),
        ),
      ],
    );
  }
}
