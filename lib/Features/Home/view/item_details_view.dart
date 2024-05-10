import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/ItemDetailsViewBody.dart';
import 'package:my_own_e_commerce_app/constance.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constance.primaryBackGroundColor,
      body: const ItemDetailsViewBody(),
    );
  }
}
