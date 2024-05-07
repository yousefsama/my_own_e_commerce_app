import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'What are you looking for?',
          style: AppStyle.bold34,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          autofocus: false,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIconColor: const Color(0xffF26F3F),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset(
                Assets.imagesSearchIcon,
              ),
            ),
            hintText: 'Enter a keyword...',
            alignLabelWithHint: false,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        )
      ],
    );
  }
}
