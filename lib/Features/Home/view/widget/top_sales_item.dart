import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Love_and_notLoveIcon.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/add_to_bag_row.dart';
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
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
                aspectRatio: 1,
                child: Image.asset(Assets.imagesProductTestImage)),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Clothes yousef sama shams el din hassanin',
                  style: AppStyle.medium18Black(context)
                      .copyWith(fontWeight: FontWeight.w600),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '40\$',
                      style: AppStyle.medium18Black(context).copyWith(
                          fontWeight: FontWeight.w600, color: Colors.grey),
                    ),
                    isLoved
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
                                    child: CustomSnackBar(
                                        text: 'Added to favorites'),
                                  ),
                                ),
                              );
                              setState(() {});
                            },
                            child: const NotLovedIcon()),
                  ],
                )
              ],
            ),
            // ListTile(

            //   contentPadding: EdgeInsets.zero,
            //   title: Text(
            //     'Clothes ad sda asd  sad asd',
            //     style: AppStyle.medium18Black(context)
            //         .copyWith(fontWeight: FontWeight.w600),
            //     maxLines: 2,
            //     overflow: TextOverflow.ellipsis,
            //   ),
            //   subtitle: Text(
            //     '40\$',
            //     style: AppStyle.medium18Black(context)
            //         .copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
            //   ),
            //   trailing: isLoved
            //       ? GestureDetector(
            //           onTap: () {
            //             isLoved = false;

            //             setState(() {});
            //           },
            //           child: const LovedIcon())
            //       : GestureDetector(
            //           onTap: () {
            //             isLoved = true;
            //             ScaffoldMessenger.of(context).showSnackBar(
            //               const SnackBar(
            //                 content: Padding(
            //                   padding: EdgeInsets.only(
            //                     left: 25,
            //                     right: 25,
            //                   ),
            //                   child: CustomSnackBar(text: 'Added to favorites'),
            //                 ),
            //               ),
            //             );
            //             setState(() {});
            //           },
            //           child: const NotLovedIcon()),
            // ),
          ],
        ),
      ),
    );
  }
}
