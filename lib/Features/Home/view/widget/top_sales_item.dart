import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Love_and_notLoveIcon.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/add_to_bag_row.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/custom_snack_bar.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class TopSalesItem extends StatefulWidget {
  const TopSalesItem({
    super.key,
  });

  @override
  State<TopSalesItem> createState() => _TopSalesItemState();
}

class _TopSalesItemState extends State<TopSalesItem> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 1,
                child: Image.asset(Assets.imagesProductTestImage)),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Clothes asd asd asd asd asd asd sad a asdas d asd asdasd asd asd asdsd',
                style: AppStyle.medium18Black
                    .copyWith(fontWeight: FontWeight.w600),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                '40\$',
                style: AppStyle.medium18Black
                    .copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
              trailing: isLoved
                  ? GestureDetector(
                      onTap: () {
                        isLoved = false;

                        setState(() {});
                      },
                      child: const LovedIcon())
                  : GestureDetector(
                      onTap: () {
                        isLoved = true;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Padding(
                              padding: EdgeInsets.only(
                                left: 25,
                                right: 25,
                              ),
                              child: AddToBagRow(),
                            ),
                          ),
                        );
                        setState(() {});
                      },
                      child: const NotLovedIcon()),
            ),
          ],
        ),
      ),
    );
  }
}
