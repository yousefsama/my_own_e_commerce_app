import 'package:flutter/material.dart';
import 'package:my_own_e_commerce_app/Features/Home/data/models/product_model.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/Love_and_notLoveIcon.dart';
import 'package:my_own_e_commerce_app/Features/Home/view/widget/add_to_bag_row.dart';
import 'package:my_own_e_commerce_app/core/utils/app_style.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isLoved = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.network(
                      widget.productModel.image,
                    ),
                  )),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productModel.name,
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
                      '${widget.productModel.price}\$',
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
