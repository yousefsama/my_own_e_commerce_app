import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Love_and_notLoveIcon.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/add_to_bag_row.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class DeatailsAppBar extends StatefulWidget {
  const DeatailsAppBar({
    super.key,
  });

  @override
  State<DeatailsAppBar> createState() => _DeatailsAppBarState();
}

class _DeatailsAppBarState extends State<DeatailsAppBar> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            Assets.imagesArrowleft,
            height: 35,
          ),
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          height: 35,
        ),
        isLoved
            ? GestureDetector(
                onTap: () {
                  isLoved = false;

                  setState(() {});
                },
                child: const LovedIcon())
            : GestureDetector(
                onTap: () {
                  isLoved = true;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Padding(
                        padding: EdgeInsets.only(
                          left: 25,
                          right: 25,
                        ),
                        child: CustomSnackBar(text: 'Added to favorite'),
                      ),
                    ),
                  );
                  setState(() {});
                },
                child: const NotLovedIcon()),
      ],
    );
  }
}
