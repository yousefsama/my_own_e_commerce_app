import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/cart/View/Widget/Custom_header.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/Profile_image.dart';
import 'package:my_own_e_commerce_app/Features/profile/View/widget/my_profile_item_list_view.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return SafeArea(
      child: Padding(
        padding: MediaQuery.sizeOf(context).width < 800
            ? const EdgeInsets.symmetric(horizontal: 25.0)
            : EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.2),
        child: FutureBuilder<DocumentSnapshot>(
          future: users.doc(FirebaseAuth.instance.currentUser!.uid).get(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text("Something went wrong"));
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Center(child: Text("Document does not exist"));
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  const SliverToBoxAdapter(
                      child: LogoAndText(
                          image: Assets.imagesUser, text: "My Profile")),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Flexible(
                          child: ProfileImage(
                    image: data['image'],
                  ))),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Text(
                    data['user name'],
                    textAlign: TextAlign.center,
                    style: AppStyle.bold34(context),
                  )),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Text(
                    data['email'],
                    textAlign: TextAlign.center,
                    style: AppStyle.medium18Black(context),
                  )),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 40,
                    ),
                  ),
                  const SliverToBoxAdapter(child: MyProfileItemListView()),
                ],
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
