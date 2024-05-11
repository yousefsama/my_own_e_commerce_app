import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/ItemDetailsViewBody.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/custom_floating_button.dart';
import 'package:my_own_e_commerce_app/constance.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingButton(),
      backgroundColor: Constance.primaryBackGroundColor,
      body: const ItemDetailsViewBody(),
    );
  }
}
