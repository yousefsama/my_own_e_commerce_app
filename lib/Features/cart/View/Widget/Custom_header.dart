import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:svg_flutter/svg.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText({
    super.key,
    required this.image,
    required this.text,
  });
  final String image, text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            SvgPicture.asset(image),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: AppStyle.bold34,
            ),
          ],
        )
      ],
    );
  }
}
