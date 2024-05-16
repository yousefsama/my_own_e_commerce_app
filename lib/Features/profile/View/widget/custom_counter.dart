import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class CustomCounter extends StatefulWidget {
  const CustomCounter({
    super.key,
  });

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (counter > 0) {
              counter--;
            }
            setState(() {});
          },
          icon: SvgPicture.asset(Assets.imagesMinus),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          counter.toString(),
          style: AppStyle.bold24(context),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            if (counter >= 0) {
              counter++;
            }
            setState(() {});
          },
          icon: SvgPicture.asset(Assets.imagesPlus),
        ),
      ],
    );
  }
}
