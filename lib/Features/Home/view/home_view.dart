import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/home_view_body.dart';
import 'package:my_own_e_commerce_app/constance.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:svg_flutter/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      backgroundColor: Constance.primaryBackGroundColor,
      bottomNavigationBar:
          // Obx(
          //   () =>

          NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              elevation: 0,
              height: 75,
              indicatorColor: Colors.transparent,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: Constance.navigationBarColor,
              destinations: [
            NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.imagesHomeIcon,
                  color: Colors.black,
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.imagesHomeIcon,
                  color: Colors.white,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.imagesCollection,
                  color: Colors.black,
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.imagesCollection,
                  color: Colors.white,
                ),
                label: 'Collection'),
            NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.imagesShoppingBag,
                  color: Colors.black,
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.imagesShoppingBag,
                  color: Colors.white,
                ),
                label: 'My Cart'),
            NavigationDestination(
                icon: SvgPicture.asset(
                  Assets.imagesUserIcon,
                  color: Colors.black,
                ),
                selectedIcon: SvgPicture.asset(
                  Assets.imagesUserIcon,
                  color: Colors.white,
                ),
                label: 'Profile'),
          ]),
      // ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final screens = [
    const HomeViewBody(),
    const SizedBox(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.white,
    ),
  ];
}
