import 'package:flutter/widgets.dart';
import 'package:my_own_e_commerce_app/core/utils/assetsImage.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.height,
  });
  final Widget child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(Assets.imagesBackgroundImage))),
        child: child);
  }
}
