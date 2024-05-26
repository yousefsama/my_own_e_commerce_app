import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/Custom_header.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/Profile_image.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/my_profile_item_list_view.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: MediaQuery.sizeOf(context).width < 800
            ? const EdgeInsets.symmetric(horizontal: 25.0)
            : EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.2),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            SliverToBoxAdapter(
                child:
                    LogoAndText(image: Assets.imagesUser, text: "My Profile")),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(child: Flexible(child: ProfileImage())),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(child: MyProfileItemListView()),
          ],
        ),
      ),
    );
  }
}
