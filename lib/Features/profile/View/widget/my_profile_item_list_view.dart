import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_own_e_commerce_app/Features/Authentication/view/signin_view.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/my_profile_item.dart';
import 'package:my_own_e_commerce_app/Features/profile/data/models/My_profile_item_model.dart';
import 'package:my_own_e_commerce_app/core/utils/Go_Router.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class MyProfileItemListView extends StatelessWidget {
  const MyProfileItemListView({super.key});
  static const profileModel = [
    MyProfileModel(image: Assets.imagesHeartIcon, text: 'My Favorites'),
    MyProfileModel(image: Assets.imagesShoppingBag, text: 'My shopping'),
    MyProfileModel(
        image: Assets.imagesShieldCheckIcon, text: 'Account settings'),
    MyProfileModel(image: Assets.imagesChatAltIcon, text: 'Technical support'),
    MyProfileModel(image: Assets.imagesArrowRightIcon, text: 'Sign out')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: profileModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                if (index == 4) {
                  GoRouter.of(context).push(AppRouter.signInView);

                  FirebaseAuth.instance.signOut();
                }
              },
              child: MyProfileItem(
                myProfileModel: profileModel[index],
              ),
            ),
          );
        });
  }
}
