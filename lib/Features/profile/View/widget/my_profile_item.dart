import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/profile/data/models/My_profile_item_model.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:svg_flutter/svg.dart';

class MyProfileItem extends StatelessWidget {
  const MyProfileItem({
    super.key,
    required this.myProfileModel,
  });
  final MyProfileModel myProfileModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            SvgPicture.asset(
              myProfileModel.image,
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                myProfileModel.text,
                style: AppStyle.bold24,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
